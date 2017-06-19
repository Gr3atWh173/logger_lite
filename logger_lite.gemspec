# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'logger_lite/version'

Gem::Specification.new do |spec|
  spec.name          = "logger_lite"
  spec.version       = LoggerLite::VERSION
  spec.authors       = ["Gr3atWh173"]
  spec.email         = ["Gr3atWh173@users.noreply.github.com"]
  spec.homepage      = "https://github.com/Gr3atWh173/logger_lite"

  spec.summary       = %q{Very lite logger gem for Nastika}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
