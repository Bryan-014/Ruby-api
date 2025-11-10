require 'mysql2'

client = Mysql2::Client.new(
  host: '127.0.0.1',
  username: 'root',
  password: '',
  database: 'minha_api_development',
  ssl_mode: :disabled
)

puts client.query('SELECT VERSION() AS version').first