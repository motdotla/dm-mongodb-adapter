# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-mongodb-adapter}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["scottmotte"]
  s.date = %q{2009-07-08}
  s.email = %q{scott@scottmotte.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "dm-mongodb-adapter.gemspec",
     "lib/dm-mongodb-adapter.rb",
     "spec/dm-mongodb-adapter_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/scottmotte/dm-mongodb-adapter}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{TODO}
  s.test_files = [
    "spec/dm-mongodb-adapter_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
