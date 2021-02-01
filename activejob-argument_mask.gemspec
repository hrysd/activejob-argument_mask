# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activejob/argument_mask/version'

Gem::Specification.new do |spec|
  spec.name          = "activejob-argument_mask"
  spec.version       = ActiveJob::ArgumentMask::VERSION
  spec.authors       = ["Hiroshi Yoshida"]
  spec.email         = ["hrysd22@gmail.com"]

  spec.summary       = %q{Mask arguments of specified Job from ActiveJob's log file}
  spec.description   = %q{This is ActiveJob extension wich mask arguments of specified Job from ActiveJob's log.}
  spec.homepage      = "https://github.com/hrysd/activejob-argument_mask"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'activejob'
  spec.add_runtime_dependency 'activesupport'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency 'appraisal'
end
