# frozen_string_literal: true

require_relative "lib/credaudit/version"

Gem::Specification.new do |spec|
  spec.name          = "credaudit"
  spec.version       = Credaudit::VERSION
  spec.authors       = ["Dave Williams"]
  spec.email         = ["dave@dave.io"]

  spec.summary       = "Find unused Google Cloud Platform user and service accounts"
  spec.description   = "Find unused Google Cloud Platform user and service accounts"
  spec.homepage      = "https://github.com/daveio/credaudit"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://nopush"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/daveio/credaudit"
  spec.metadata["changelog_uri"] = "https://github.com/daveio/credaudit/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
