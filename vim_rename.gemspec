# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vim_rename/version'

Gem::Specification.new do |spec|
  spec.name          = "vim_rename"
  spec.version       = VimRename::VERSION
  spec.authors       = ["Enrico Carlesso"]
  spec.email         = ["enricocarlesso@gmail.com"]
  spec.summary       = %q{Mass rename files with vim.}
  spec.description   = %q{Mass rename files with vim. Ever needed to rename a lot of similar files, and asking youself: "Wow, only if I could use vim block selection..."? Well, now you can!}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "colored"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
