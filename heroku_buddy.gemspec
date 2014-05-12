# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heroku_buddy/version'

Gem::Specification.new do |spec|
  spec.name          = "heroku_buddy"
  spec.version       = HerokuBuddy::VERSION
  spec.authors       = ["David Furber"]
  spec.email         = ["furberd@gmail.com"]
  spec.description   = %q{Provides a binary called 'h' that gives access to common heroku tasks.}
  spec.summary       = %q{The 'h' command is your Heroku toolbelt buddy.}
  spec.homepage      = "http://github.com/dfurber/heroku-buddy"
  spec.license       = "MIT"
  spec.executables = ["h"]

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib", "lib/heroku_buddy"]

end
