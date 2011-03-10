require 'rubygems'

spec = Gem::Specification.new do |s|
  s.name = "RbYAML"
  s.version = "0.2.0"
  s.author = "Ola Bini"
  s.email = "ola@ologix.com"
  s.homepage = "http://rbyaml.rubyforge.org"
  s.platform = Gem::Platform::RUBY
  s.summary = "A pure Ruby YAML parser and emitter, mostly supporting YAML 1.1."
  candidates = Dir.glob("{docs,lib,test}/**/*") + ["LICENSE"]
  s.files = candidates.delete_if do |item| item.include?("CVS") || item.include?("rdoc") end
  s.require_path = "lib"
  s.autorequire = "rbyaml"
  s.test_file = "test/test_rbyaml.rb"
  s.has_rdoc = true
  s.extra_rdoc_files = ["README"]
end

if $0 == __FILE__
  Gem::manage_gems
  Gem::Builder.new(spec).build
end
