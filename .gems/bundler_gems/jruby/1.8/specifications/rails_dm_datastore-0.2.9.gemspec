# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rails_dm_datastore}
  s.version = "0.2.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Josh S Moore", "John Woodell"]
  s.date = %q{2010-04-16}
  s.description = %q{Integrate datamapper to Rails for the Google App Engine}
  s.email = ["joshsmoore@gmail.com", "woodie@netpress.com"]
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = [".document", ".gitignore", "LICENSE", "README.rdoc", "Rakefile", "VERSION", "generators/dd_model/USAGE", "generators/dd_model/dd_model_generator.rb", "generators/dd_model/templates/model.rb", "generators/dd_model/templates/unit_test.rb", "lib/rails_dm_datastore.rb", "lib/rails_dm_datastore/action_view.rb", "lib/rails_dm_datastore/data_mapper.rb", "lib/rails_dm_datastore/extlib.rb", "lib/rails_dm_datastore/local_object_space.rb", "rails_dm_datastore.gemspec", "test/helper.rb", "test/test_dm-rails-gae.rb", "test/test_weak_reference.rb"]
  s.homepage = %q{http://github.com/joshsmoore/dm-rails-gae}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Generators for dm on gae}
  s.test_files = ["test/helper.rb", "test/test_dm-rails-gae.rb", "test/test_weak_reference.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<dm-core>, ["= 0.10.2"])
      s.add_runtime_dependency(%q<dm-ar-finders>, ["= 0.10.2"])
      s.add_runtime_dependency(%q<dm-timestamps>, ["= 0.10.2"])
      s.add_runtime_dependency(%q<dm-validations>, ["= 0.10.2"])
      s.add_runtime_dependency(%q<dm-appengine>, [">= 0"])
      s.add_runtime_dependency(%q<rails_appengine>, [">= 0"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<dm-core>, ["= 0.10.2"])
      s.add_dependency(%q<dm-ar-finders>, ["= 0.10.2"])
      s.add_dependency(%q<dm-timestamps>, ["= 0.10.2"])
      s.add_dependency(%q<dm-validations>, ["= 0.10.2"])
      s.add_dependency(%q<dm-appengine>, [">= 0"])
      s.add_dependency(%q<rails_appengine>, [">= 0"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<dm-core>, ["= 0.10.2"])
    s.add_dependency(%q<dm-ar-finders>, ["= 0.10.2"])
    s.add_dependency(%q<dm-timestamps>, ["= 0.10.2"])
    s.add_dependency(%q<dm-validations>, ["= 0.10.2"])
    s.add_dependency(%q<dm-appengine>, [">= 0"])
    s.add_dependency(%q<rails_appengine>, [">= 0"])
  end
end
