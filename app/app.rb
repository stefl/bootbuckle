class Bootbuckle < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers
  register Padrino::Sprockets

  sprockets :minify => (Padrino.env == :production)

  enable :sessions

  set :cache, Padrino::Cache::Store::Memcache.new(::Dalli::Client.new(ENV["MEMCACHE_SERVERS"] || '127.0.0.1:11211', :exception_retry_limit => 1))

  set :google_analytics, "XXXXXXXX"
  set :typekit, "ABC123"
  set :title, "My new app"
  set :base_host, "mynewapp.com"
  set :description, "A new shiny thing, how exciting!"
  set :mongo_datbase_name, "bootbuckle"
end
