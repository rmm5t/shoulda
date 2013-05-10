$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
require 'shoulda/version'

Gem::Specification.new do |s|
  s.name        = 'shoulda'
  s.version     = Shoulda::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tammer Saleh", "Joe Ferris", "Ryan McGeary", "Dan Croak",
                   "Matt Jankowski"]
  s.email       = %q{support@thoughtbot.com}
  s.homepage    = %q{https://github.com/thoughtbot/shoulda}
  s.summary     = %q{Making tests easy on the fingers and eyes}
  s.description = %q{Making tests easy on the fingers and eyes}
  s.license     = %q{MIT}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("shoulda-context", ["~> 1.0", ">= 1.0.1"])
  s.add_dependency("shoulda-matchers", [">= 1.4.1", "< 3.0"])

  s.add_development_dependency('appraisal',   '~> 0.4.0')
  s.add_development_dependency("rails", "~> 3.0.20")
  s.add_development_dependency("sqlite3", "~> 1.3")
  s.add_development_dependency("rspec-rails", "~> 2.7")
  s.add_development_dependency("cucumber", "~> 1.1")
  s.add_development_dependency("aruba", "~> 0.5")
end
