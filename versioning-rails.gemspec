require_relative "lib/versioning/version"

Gem::Specification.new do |spec|
  spec.name        = "versioning-rails"
  spec.version     = Versioning::VERSION
  spec.authors     = ["Karn Tirasoontorn"]
  spec.email       = ["karn@hey.com"]
  spec.homepage    = "https://github.com/karn18/versioning-rails"
  spec.summary     = "Control version in rails application"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/karn18/versioning-rails"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1"
end
