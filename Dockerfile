FROM ruby:2.7.1

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  apt-transport-https

RUN curl -sL https://dev.nodesource.com/setup_12.x | bash -

# install Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | \
  tee /etc/apt/sources.list.d/yarn.list


RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  nodejs \
  yarn

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

COPY . /usr/src/app/

# Run yarn install to install JavaScript dependencies.
RUN yarn install --check-files

RUN DATABASE_HOST=blah DATABASE_USER=blah POSTGRES_USER=blah POSTGRES_PASSWORD=blah POSTGRES_DB=blah bin/rails webpacker:install

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
