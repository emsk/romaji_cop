require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
end

require 'rainbow'
Rainbow.enabled = false

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'romajic'
