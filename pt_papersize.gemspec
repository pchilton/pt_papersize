# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pt/papersize/version'

Gem::Specification.new do |spec|
  spec.name          = "pt_papersize"
  spec.version       = PT::PaperSize::VERSION
  spec.authors       = ["Paul Chilton"]
  spec.email         = ["paul.chilton@gmail.com"]
  spec.summary       = %q{Identify standard page sizes from PostScript point sizes}
  spec.homepage      = "https://github.com/pchilton/pt_papersize"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
