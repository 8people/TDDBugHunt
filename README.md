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

## If you are completing this exercise

Please fork this repo to start with!

Then you can create any branches and commits that you like, on your fork, to document your progress through the exercise.

Additional note-taking separately might be wise, to keep track of all of your thoughts, questions and concerns that arise along the way. They will all be useful to share during your next call.

Please do not spend more than an hour on this exercise.
