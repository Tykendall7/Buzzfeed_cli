
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "travel_cli/version"

Gem::Specification.new do |spec|
  spec.name          = "travel_cli"
  spec.version       = TravelCli::VERSION
  spec.authors       = ["<github username>"]
  spec.email         = ["<github email address>"]

  spec.summary       = %q{todo: Write a short summary, because RubyGems requires one.}
  spec.description   = %q{todo: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/Tykendall7/Buzzfeed_cli"
  spec.license       = "MIT"

#   Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
#   to allow pushing to a single host or delete this section to allow pushing to any host.
#   if spec.respond_to?(:metadata)
#     spec.metadata["allowed_push_host"] = "# : : Set to 'http://mygemserver.com'"
#
#     spec.metadata["homepage_uri"] = "https://github.com/Tykendall7/Buzzfeed_cli"
#     spec.metadata["source_code_uri"] = "todo: https://github.com/Tykendall7/Buzzfeed_cli"
#     spec.metadata["changelog_uri"] = "todo: https://github.com/Tykendall7/Buzzfeed_cli"
#   else
#     raise "RubyGems 2.0 or newer is required to protect against " \
#       "public gem pushes."
#  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "nokogiri"
  spec.add_development_dependency "pry"

end
