# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "secure_excel"
  spec.version       = "0.1.0"
  spec.authors       = ["Your Name"]
  spec.email         = ["your.email@example.com"]

  spec.summary       = %q{A Ruby gem for creating password-protected Excel files using the caxlsx gem.}
  spec.description   = %q{The secure_excel gem allows you to create Excel files and set a password to protect them, based on the caxlsx gem.}
  spec.homepage      = "https://github.com/roharon/secure_excel"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "caxlsx"
end
