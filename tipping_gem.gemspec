lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tipping_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "tipping_gem"
  spec.version       = TippingGem::VERSION
  spec.authors       = ["JellieBeanz"]
  spec.email         = ["shaneoneill1995@gmail.com"]

  spec.summary       = %q{Gem for tipping a post}
  spec.homepage      = "https://github.com/JellieBeanz/TippingGem.git"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  # reference to Jordan Hudgens https://rubygems.org/gems/tippy/versions/0.1.2


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
