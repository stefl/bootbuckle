Mongoid.skip_version_check = true

# Connection.new takes host, port
port = Mongo::Connection::DEFAULT_PORT

case Padrino.env
  when :development then
    raise "Please change the database name in app.rb" if Bootbuckle.mongo_database_name == "bootbuckle"
    connection = Mongo::Connection.new("localhost", port, {:pool_timeout => 60, :pool_size => 5, :timeout => 10})
    Mongoid.database = connection.db(Bootbuckle.mongo_database_name)
  when :production then
    uri  = URI.parse(ENV['MONGOLAB_URI'])
    connection = Mongo::Connection.from_uri(ENV['MONGOLAB_URI'], {:pool_timeout => 60, :pool_size => 5, :timeout => 10})
    Mongoid.database = connection.db(uri.path.gsub(/^\//, ''))
end

MONGO_CONNECTION = connection