require "rubygems"
require 'rack-rewrite'

use Rack::Static, :urls => ['/images', '/core', '/extensions', '/introduction', '/themes', '/scripts' ],
                  :root => 'public'

use Rack::Rewrite do
  rewrite '/', '/index.html'
end
run Rack::Directory.new('public')

