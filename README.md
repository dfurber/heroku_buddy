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

Commit your current code and deploy to Heroku with a commit message:

	$ h deploy MESSAGE   
	
The deploy runs git add, commit, push to origin, and push to Heroku.

Share your applications secrets using the 'secretive' gem:
	
	$ h secrets

Tail the Heroku log file plus the last 200 lines:

	$ h log

Bring up the Rails console for your Heroku app:

	$ h console

Run rake db:migrate in maintenance mode:

	$ h migrate
	
Commit, push, deploy, and migrate in maintenance mode with a commit message:

	$ h dm MESSAGE

Run a rake task:

	$ h rake namespace:task
	
Sync your local database to your Heroku app's database:

	$ h sync
	

## TODO items and issues:
1. Run multiple rake tasks.
2. Use dot env files for configuration.
3. On Windows, the sync task fails because pg_restore doesn't ask for your password. When you run the command directly from command line it works fine.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
