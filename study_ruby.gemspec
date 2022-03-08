# frozen_string_literal: true

require_relative "lib/study_ruby/version"

Gem::Specification.new do |spec|
  spec.name = "study_ruby"
  spec.version = StudyRuby::VERSION
  spec.authors = ["Sergio Oseko"]
  spec.email = ["osk.sergio@gmail.com"]

  spec.summary = "Testes de algoritmos"
   spec.homepage = "https://github.com/osksergio/study_ruby"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.add_development_dependency "rspec", "~> 3.2"
end
