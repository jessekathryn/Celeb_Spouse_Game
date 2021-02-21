# Project
http://trivia.corecompute.com

# Install
Clone the repository
git clone git@github.com:https://github.com/jessekathryn/Celeb_Spouse_Game
cd Celeb_Spouse_Game

run the following for *initial* docker build

- `docker-compose build app`

- `docker-compose up -d database`

- `docker-compose run --rm app bin/rails db:migrate`

- `docker-compose run --rm app bin/rails db:seed`

- `docker-compose up`


# NOTES

To get bash shell in container:

- `docker-compose exec database bash`
