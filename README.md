# SEBO - Sophisticated Electronic Book Organizator

Sinatra app to help you to organize your book colletion 📚 🎉

## Dependencies

  - Ruby 2.6.2
  - PostgreSQL 9.6

## Setup

  - Install dependencies
  ```shell
  bundle install
  ```

  - Create dotenv file (don't forget to fill it with your environment information)
  ```shell
  mv .env.example .env
  ```

  - Create database
  ```shell
  bundle exec rake db:setup
  ```

  - Start server
  ```
  bundle exec shotgun
  ```

  - Access in your browser `localhost:9393/books`
