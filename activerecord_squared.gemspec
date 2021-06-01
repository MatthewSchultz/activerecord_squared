require_relative "lib/activerecord_squared/version"

Gem::Specification.new do |spec|
  spec.name                   = "activerecord_squared"
  spec.required_ruby_version  = '>= 1.9.3'
  spec.version                = ActiverecordSquared::VERSION
  spec.authors                = ["Matthew Schultz"]
  spec.homepage               = "https://github.com/"
  spec.summary                = 'A shortcut for activerecord find.'
  spec.description            = <<-DESCRIPTION
    Adds a [] method at the class level for activerecord objects,
  DESCRIPTION
  spec.license                = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata               = {
    "homepage_uri" => spec.homepage,
    "source_code_uri" => spec.homepage,
    "changelog_uri" => spec.homepage
  }

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", '> 4.0.3'
end
