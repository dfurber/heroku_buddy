# HerokuBuddy

This is the easy access script, named "h", for common Heroku interactions such as deploying, migration, opening a console, tailing logs, and sharing your application secrets.

The "secrets" feature depends on the "secretive" gem, which you can find at http://github.com/singlebrook/secretive.

## Installation

Add this line to your application's Gemfile:

    gem 'heroku_buddy', group: :development

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install heroku_buddy

## Usage

The basic workflow is that you set your heroku application name like so:

	$ h app app_name

And then you can run the other commands without having to specify your app name

Commit and deploy:
h deploy MESSAGE   Runs git add, commit, push origin master, and push heroku
h secrets          Shares your app secrets in config/secrets.yml with your Heroku app
h log              Tails the Heroku log file plus the last 200 lines
h console          Brings up the Rails console for your Heroku app

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
