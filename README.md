# Portfolio API
The core customer for Measurabl is an owner or operator of commercial real estate. There are a few fundamental concepts that we have in our system to serve these customers: Portfolios, Sites, and Spaces.
This Ruby on Rails API will serve further information about Portfolios, Sites, and Spaces per the prviously provided requirements.

### Author
- Diana Buffone | [GitHub](https://github.com/Diana20920) |
  [LinkedIn](https://www.linkedin.com/in/dianabuffone/)

## Table of Contents
  - [Built With](#built-with)
  - [Getting Started](#getting-started)
  - [Usage](#usage)
  - [Running the tests](#running-the-tests)
  - [DB Schema](#db-schema)
  - [Endpoints](#endpoints)
  - [Considerations](#considerations)

## Built With

* [Ruby on Rails](https://rubyonrails.org)

### Gems Used
  - [Jbuilder](https://github.com/rails/jbuilder)
  - [rspec-rails](https://github.com/rspec/rspec-rails)
  - [rspec-pride](https://github.com/ferrous26/rspec-pride)
  - [Pry](https://pry.github.io/)
  - [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails)
  - [Faker](https://github.com/faker-ruby/faker)
  - [Capybara](https://github.com/teamcapybara/capybara)
  - [SimpleCov](https://github.com/simplecov-ruby/simplecov)
  - [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers)
<!-- - [Faraday](https://github.com/lostisland/faraday)
- [Bcrypt](https://github.com/bcrypt-ruby/bcrypt-ruby)
- [Figaro](https://github.com/laserlemon/figaro)
- [Travis](https://github.com/travis-ci/travis.rb)
- [Rubocop](https://github.com/rubocop/rubocop)
- [Webmock](https://github.com/bblimke/webmock)
- [VCR](https://github.com/vcr/vcr) -->

### Prerequisites

To run this application you will need
* Ruby 2.5.3 and Rails 6.1.4.1

## Getting Started

To get a local copy up and running follow these simple steps:
1. Fork this repo
2. Clone your forked repo to your local machine
   ```sh
   git clone <git@github.com:SE-Seedling/portfolio_api.git>
   ```
3. Install gem packages
   ```sh
   bundle install
   ```

## Usage
   1. Use the seed file provided to populate your database:
       ```sh
        rails db:setup
       ```
   2. Start rails server
       ```sh
       rails s
       ```
   3. Nagivate to `http://localhost:3000/`

## Running the tests
RSpec testing suite is utilized for testing this application.
- Run the RSpec suite to ensure everything is passing as expected
  ```sh
  bundle exec rspec
  ```

## DB Schema


## Endpoints
1. **Portfolios**

    1a. `GET /api/v1/portfolios` - A list of portfolios in the system

    <details>
    <summary>Example response </summary>

    ```json

    ```
    </details>

    1b. `GET /api/v1/portfolios/:id` - detailed information about a single portfolio

    <details>
    <summary>Example response </summary>

    ```json

    ```
    </details>

2. **Sites**

    2a. `GET /api/v1/portfolios/:id/sites` - A list of sites for a given portfolio

    <details>
    <summary>Example response </summary>

    ```json

    ```
    </details>

    2b. `GET /api/v1/portfolios/:id/sites/:id` - detailed information about a single site

    <details>
    <summary>Example response </summary>

    ```json

    ```
    </details>

3. **Spaces**

    3a. `GET /api/v1/portfolios/:id/sites/:id/spaces` - A list of sites for a given site

    <details>
    <summary>Example response </summary>

    ```json

    ```
    </details>

    3b. `GET /api/v1/portfolios/:id/sites/:id/spaces/:id` - detailed information about a single space

    <details>
    <summary>Example response </summary>

    ```json

    ```
    </details>

    3c. `GET /api/v1/portfolios/:id/sites/:id/spaces/statistics` - statistics of square footage of spaces for a site (e.g. Total, Average)

    <details>
    <summary>Example response </summary>

    ```json

    ```
    </details>

    3d. `GET /api/v1/portfolios/:id/spaces/statistics` - statistics of a square footage of spaces for a portfolio (e.g. Total, Average)

    <details>
    <summary>Example response </summary>

    ```json

    ```
    </details>

## Considerations
