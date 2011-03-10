$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'rbyaml'
        
RbYAML.dump(open(File.expand_path(ARGV[0]),"r") {|f| RbYAML.load(f)})
