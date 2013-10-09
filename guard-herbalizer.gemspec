# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "guard-herbalizer"
  spec.version       = "0.1.0"
  spec.authors       = ["Ouvrages"]
  spec.email         = ["contact@ouvrages-web.fr"]
  spec.description   = %q{Guard plugin for herbalizer, to convert HAML to ERB}
  spec.summary       = %q{Converts HAML to ERB using Guard and herbalizer}
  spec.homepage      = "https://github.com/ouvrages/guard-herbalizer"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "guard"
  
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
