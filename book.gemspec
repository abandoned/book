# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "book/version"

Gem::Specification.new do |s|
  s.name        = "book"
  s.version     = Book::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Paper Cavalier"]
  s.email       = "code@papercavalier.com"
  s.homepage    = ""
  s.summary     = %q{A book model}
  s.description = %q{A book model for consuming various book APIs}

  s.rubyforge_project = "book"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  {
    "structure"           => "~> 0.9.0"
  }.each do |lib, version|
    s.add_runtime_dependency lib, version
  end

  {
    "rspec"               => "~> 2.6",
  }.each do |lib, version|
    s.add_development_dependency lib, version
  end
end
