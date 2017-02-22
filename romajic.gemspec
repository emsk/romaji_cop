# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'romajic/version'

Gem::Specification.new do |spec|
  spec.name          = 'romajic'
  spec.version       = Romajic::VERSION
  spec.authors       = ['emsk']
  spec.email         = ['emsk1987@gmail.com']

  spec.summary       = %q{Automatic romaji spelling checker.}
  spec.description   = %q{Automatic romaji spelling checker. Let's write correct romaji.}
  spec.homepage      = 'https://github.com/emsk/romajic'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_runtime_dependency 'thor', '~> 0.19'
  spec.add_runtime_dependency 'coderay', '~> 1.1'
  spec.add_runtime_dependency 'levenshtein', '~> 0.2'
  spec.add_runtime_dependency 'romajify', '~> 0.1'
  spec.add_runtime_dependency 'rainbow', '~> 2.1'
  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 11.2'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'simplecov', '~> 0.12'
  spec.add_development_dependency 'coveralls', '~> 0.8'
  spec.add_development_dependency 'yard', '~> 0.9'
  spec.add_development_dependency 'redcarpet', '~> 3.4'
  spec.add_development_dependency 'rubocop', '~> 0.46'
end
