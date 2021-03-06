# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-aws-dns/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-aws-dns"
  spec.version       = Vagrant::AwsDns::VERSION
  spec.authors       = ["Nassim Kacha"]
  spec.email         = ["nassim.kacha@rea-group.com"]

  spec.summary       = %q{A Vagrant plugin that allows you to set up route53 records for instances created using vagrant-aws provider.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/nasskach/vagrant-aws-dns"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'aws-sdk', '~> 2.3.9'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 11.1"
end
