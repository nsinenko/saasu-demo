require 'saasu'

Saasu::Config.configure do |c|
  c.username = ENV['SAASU_USER']
  c.password = ENV['SAASU_PASSWORD']
  c.file_id = ENV['SAASU_FILE']
end
