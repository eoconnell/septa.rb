# -*- encoding: utf-8 -*-
require File.expand_path('../lib/septa/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Evan O'Connell"]
  gem.email         = ["oconn.e@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.add_runtime_dependency 'resourceful'

  gem.add_development_dependency 'rspec', ">=2.14.0"
  gem.add_development_dependency 'guard'
  gem.add_development_dependency 'guard-rspec'
  gem.add_development_dependency 'webmock'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "septa"
  gem.require_paths = ["lib"]
  gem.version       = Septa::VERSION
end
