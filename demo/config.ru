# config.ru
require 'bundler'
Bundler.require
require 'opal'

run Opal::Server.new { |s|
  s.append_path 'app'

  s.main = 'main'

  s.index_path = 'index.html'
}
