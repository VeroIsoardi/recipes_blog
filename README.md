# README

## Food Blog

This is a really simple application that allows people to see and filter recipes and a user to create, update and delete them. 

### 💻 Tech Stack
* Ruby 3.3.5
* Rails 8.0.0
* Hotwire (with turbo and stimulus)
* Tailwind
* PostgreSQL 16.3
* RSpec

### ⚙️ Setup
#### Via native installation
* Clone the project using `git clone ....`
* Run `bundle install` to install the project gems.
* Create DB and run migrations with `bundle exec rails db:create db:migrate`.
* Unless you have a dump, run `bundle exec rails db:seed` to populate DB with sample data.
* Run `bin/dev` to start server.

### 🧪 Testing
This project is using Rspec with Capybara. To run the entire suite, execute the following command:
`bin/ci`
