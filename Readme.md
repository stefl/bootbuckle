Bootbuckle
==========

A vanilla Padrino app you can clone to get going quickly with a clean setup for a web project.

Fork the project, then:
    
    git clone git://github.com/stefl/bootbuckle.git
    bundle install

If you don't have MongoDB locally, and you're on OSX, then install Homebrew, followed by:

    brew update
    brew install mongodb

Edit config/database.rb and replace "bootbuckle" with something else at this line:

    Mongoid.database = connection.db("bootbuckle")

Then do a global find and replace for "Bootbuckle", replacing it with your preferred application name.

Then 