# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "operator_recordable/version"

Gem::Specification.new do |spec|
  spec.name          = "operator_recordable"
  spec.version       = OperatorRecordable::VERSION
  spec.authors       = ["Yuji Hanamura"]
  spec.email         = ["yuji.developer@gmail.com"]

  spec.summary       = "OperatorRecordable is a Rails plugin to set created_by, updated_by, and deleted_by to ActiveRecord objects."
  spec.description   = "OperatorRecordable is a Rails plugin that makes your ActiveRecord models to be saved or logically deleted with automatically set created_by, updated_by, and deleted_by. Also it makes creator, updater, deleter belongs_to association if a class has created_by, updated_by, or deleted_by."
  spec.homepage      = "https://github.com/yujideveloper/operator_recordable"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", "~> 5.0"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "pry", ">= 0.10.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.7"
  spec.add_development_dependency "sqlite3", "~> 1.0"
end
