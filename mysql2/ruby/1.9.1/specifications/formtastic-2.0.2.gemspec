# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "formtastic"
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Justin French"]
  s.date = "2011-10-05"
  s.description = "A Rails form builder plugin/gem with semantically rich and accessible markup"
  s.email = ["justin@indent.com.au"]
  s.extra_rdoc_files = ["README.textile"]
  s.files = ["README.textile"]
  s.homepage = "http://github.com/justinfrench/formtastic"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.15"
  s.summary = "A Rails form builder plugin/gem with semantically rich and accessible markup"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.5"])
      s.add_development_dependency(%q<rspec_tag_matchers>, [">= 1.0.0"])
      s.add_development_dependency(%q<hpricot>, ["~> 0.8.3"])
      s.add_development_dependency(%q<BlueCloth>, [">= 0"])
      s.add_development_dependency(%q<yard>, ["~> 0.6"])
      s.add_development_dependency(%q<rcov>, ["~> 0.9.9"])
      s.add_development_dependency(%q<colored>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 3.0"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.5"])
      s.add_dependency(%q<rspec_tag_matchers>, [">= 1.0.0"])
      s.add_dependency(%q<hpricot>, ["~> 0.8.3"])
      s.add_dependency(%q<BlueCloth>, [">= 0"])
      s.add_dependency(%q<yard>, ["~> 0.6"])
      s.add_dependency(%q<rcov>, ["~> 0.9.9"])
      s.add_dependency(%q<colored>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.0"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.5"])
    s.add_dependency(%q<rspec_tag_matchers>, [">= 1.0.0"])
    s.add_dependency(%q<hpricot>, ["~> 0.8.3"])
    s.add_dependency(%q<BlueCloth>, [">= 0"])
    s.add_dependency(%q<yard>, ["~> 0.6"])
    s.add_dependency(%q<rcov>, ["~> 0.9.9"])
    s.add_dependency(%q<colored>, [">= 0"])
  end
end
