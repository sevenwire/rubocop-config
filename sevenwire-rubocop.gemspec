lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sevenwire/rubocop/version"

Gem::Specification.new do |spec|
  if !spec.respond_to?(:metadata)
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.name          = "sevenwire-rubocop"
  spec.version       = Sevenwire::Rubocop::VERSION
  spec.authors       = ["Brandon Arbini", "Nick Delja"]
  spec.email         = ["b@sevenwire.com", "nick@sevenwire.com"]
  spec.summary       = "Shared Rubocop config."
  spec.homepage      = "https://github.com/sevenwire/sevenwire-rubocop"
  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.add_dependency "rubocop", "~> 0.62.0"
  spec.add_dependency "rubocop-rspec", "~> 1.31.0"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
