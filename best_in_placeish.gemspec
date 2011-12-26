# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "best_in_placeish/version"

Gem::Specification.new do |s|
  s.name        = "best_in_placeish"
  s.version     = BestInPlaceish::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Bernat Farrero"]
  s.email       = ["bernat@itnig.net"]
  s.homepage    = "http://github.com/MilesRoberts/best_in_placeish"
  s.summary     = %q{It makes any field in place editable by clicking on it, it works for inputs, textareas, select dropdowns and checkboxes}
  s.description = %q{Forked from the rails-3.0 branch of best_in_place, this includes a couple of key enhancements for Rails 3.0.x users}
  
  s.rubyforge_project = 'bestinplaceish'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rails", "~> 3.0.0"

  s.add_development_dependency "rspec-rails", "~> 2.7.0"
  s.add_development_dependency "nokogiri", ">= 1.5.0"
  s.add_development_dependency "capybara", ">= 1.0.1"
end
