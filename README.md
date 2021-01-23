Project
project.com

Install
Clone the repository
git clone git@github.com:https://github.com/jessekathryn/Celeb_Spouse_Game
cd project
Check your Ruby version
ruby -v
The output should start with something like ruby 2.5.1

If not, install the right ruby version using rbenv (it could take a while):

rbenv install 2.5.1
Install dependencies
Using Bundler and Yarn:

bundle && yarn
Set environment variables
Using Figaro:

See config/application.yml.sample and contact the developer

Initialize the database
rails db:create db:migrate db:seed
Add heroku remotes
Using Heroku CLI:

heroku git:remote -a project
heroku git:remote --remote heroku-staging -a project-staging
Serve
rails s
Deploy
With Heroku pipeline (recommended)
Push to Heroku staging remote:

git push heroku-staging
Go to the Heroku Dashboard and promote the app to production or use Heroku CLI:

heroku pipelines:promote -a project-staging
Directly to production (not recommended)
Push to Heroku production remote:

git push heroku

# Docker

run the following for *initial* docker build

- `docker-compose build app`

- `docker-compose run --rm app bin/rails webpacker:install`

- `docker-compose up -d database`

- `docker-compose run --rm app bin/rails db:migrate`

- `docker-compose run --rm app bin/rails db:seed`

- `docker-compose up`
