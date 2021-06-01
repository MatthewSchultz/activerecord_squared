require_relative "lib/activerecord_squared/version"

Gem::Specification.new do |spec|
  spec.name                   = "activerecord_squared"
  spec.required_ruby_version  = '>= 1.9.3'
  spec.version                = ActiverecordSquared::VERSION
  spec.authors                = ["Matthew Schultz"]
  spec.homepage               = "https://github.com/MatthewSchultz/activerecord_squared"
  spec.summary                = 'A shortcut for activerecord find.'
  spec.description            = "Adds a [] method at the class level for activerecord objects."
  spec.license                = "MIT"

  spec.metadata               = {
    "homepage_uri" => spec.homepage,
    "source_code_uri" => spec.homepage,
    "changelog_uri" => spec.homepage + '/blob/main/CHANGELOG.md'
  }

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", '> 4.0.3'
end
