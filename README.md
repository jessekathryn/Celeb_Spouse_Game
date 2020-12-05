# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

---

# Docker

run the following for *initial* docker build

- `docker-compose build app`

- `docker-compose run --rm app bin/rails webpacker:install`

- `docker-compose up -d database`

- `docker-compose run --rm app bin/rails db:migrate`

- `docker-compose up`
