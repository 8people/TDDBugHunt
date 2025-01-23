# TDD Bug Hunt

A Rails 7.1.5 project containing a few bugs to hunt down and broken tests to fix!

## Running this project locally

1. This project requires Ruby 3.0.3 so ensure you have that installed via a Ruby version manager like [RVM](https://rvm.io/), or your preferred alternative
2. Clone this repo to your local machine and navigate into the top-level directory

   ```bash
   git clone git@github.com:Scandotcom/TDDBugHunt.git

   cd TDDBugHunt
   ```

3. Install the project dependencies
   ```bash
   bundle install
   ```
4. Set up the local database
   ```bash
   bin/rails db:setup
   ```
5. Run the server locally
   ```bash
   bin/rails server
   ```
6. Visit `http://localhost:3000` in your browser to view the application
