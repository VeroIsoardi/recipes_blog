# Recipes Blog

A recipes blog that works on desktop and mobile: visitors search, browse and share recipes; the owner creates, edits and deletes them.

![Ruby on Rails 8](https://img.shields.io/badge/Rails_8-D30001?style=flat-square&logo=rubyonrails&logoColor=white)
![Hotwire](https://img.shields.io/badge/Hotwire-FFE801?style=flat-square&logo=hotwire&logoColor=black)
![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS-06B6D4?style=flat-square&logo=tailwindcss&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=flat-square&logo=postgresql&logoColor=white)
![RSpec](https://img.shields.io/badge/RSpec-CC342D?style=flat-square&logo=ruby&logoColor=white)

## Features

- Full-text search over titles and categories with `pg_search` (prefix matching, so results show up as you type).
- Recipes grouped by category: mains, desserts, snacks, starters, breakfast, breads and dips.
- Rich-text ingredients and steps.
- Hotwire (Turbo + Stimulus) for a fast, mostly JavaScript-free UI.
- Deployed with Kamal.

## Stack

Ruby 3.3 · Rails 8 · Hotwire · Tailwind CSS · PostgreSQL 16 · RSpec + Capybara · Kamal

## Setup

```bash
git clone https://github.com/VeroIsoardi/recipes_blog.git
cd recipes_blog
bundle install
bin/rails db:create db:migrate db:seed   # seed loads sample recipes
bin/dev
```

## Tests

```bash
bin/ci
```

Runs unit and system specs (RSpec + Capybara), Brakeman and bundler-audit.
