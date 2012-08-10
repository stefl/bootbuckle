Bootbuckle
==========

A vanilla Padrino app you can clone to get going quickly with a clean setup for a web project.

Fork the project, then:
    
    git clone git://github.com/stefl/bootbuckle.git
    bundle install

If you don't have MongoDB and Memcache locally, and you're on OSX, then install Homebrew, followed by:

    brew update
    brew install mongodb
    brew install memcached
    memcached

Edit config/mongoid.yml and replace "bootbuckle_development" with something else at this line:

    database: bootbuckle_development

Do a global find and replace for "Bootbuckle", replacing it with your preferred application name.

Then [get a 64-character hex string](https://www.grc.com/passwords.htm) and replace "change_this" at this line of config/apps.rb:

    set :session_secret, 'change_this'

Edit the application settings in app/app.rb:

    set :google_analytics, "XXXXXXXX"
    set :typekit, "ABC123"
    set :title, "My new app"
    set :base_host, "mynewapp.com"
    set :description, "A new shiny thing, how exciting!"

To deploy to Heroku on the new Cedar stack:

    heroku create my_app_name --stack cedar
    git push heroku

To run locally:

    foreman start -f Procfile.dev