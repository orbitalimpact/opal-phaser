# config.ru
require 'bundler'
Bundler.require

opal = Opal::Server.new { |s|
  s.append_path 'app'
  s.append_path 'assets'

  s.main = 'main'
}

map '/assets' do
  run opal.sprockets
end

get '/' do
  send_file 'index.html'
end

run Sinatra::Application
