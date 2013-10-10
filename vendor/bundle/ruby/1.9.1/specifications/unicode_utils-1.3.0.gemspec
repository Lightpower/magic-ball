# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "unicode_utils"
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stefan Lang"]
  s.date = "2012-03-07"
  s.email = "langstefan@gmx.at"
  s.extra_rdoc_files = ["README.txt", "INSTALL.txt", "CHANGES.txt"]
  s.files = ["README.txt", "INSTALL.txt", "CHANGES.txt"]
  s.homepage = "http://github.com/lang/unicode_utils"
  s.rdoc_options = ["--main=README.txt", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.1")
  s.rubyforge_project = "unicode-utils"
  s.rubygems_version = "1.8.24"
  s.summary = "additional Unicode aware functions for Ruby 1.9"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
