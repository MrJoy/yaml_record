# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "yaml_record/version"

Gem::Specification.new do |s|
  s.name        = "yaml_record"
  s.version     = YamlRecord::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jon Frisby", "Nico Taing", "Nathan Esquenazi"]
  s.email       = ["jfrisby@mrjoy.com", "nico@gomiso.com"]
  s.homepage    = "https://github.com/MrJoy/yaml_record"
  s.summary     = %q{YAML file persistence engine}
  s.description = %q{Use YAML for persisted data with ActiveModel interface}

  s.rubyforge_project = "yaml_record"

  s.files         = `git ls-files`.split("\n").reject do |fname|
    fname =~ /\.gitignore/
  end
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'activesupport', '>= 3.0.0'
  s.add_dependency 'activemodel', '>= 3.0.0'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'shoulda'
end
