$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'benchmark'
require 'rbyaml'
require 'yamlx'

FILES = %w{test1 test2 test3 test4 test5 test6 test7 test8 test9 test10 test12 test13 test14 test16 test18 test19 test20 gems2}
DO_TIMES = 50

Benchmark.bmbm do |bm|
  bm.report("JRuby YAML") { 
    FILES.each {|fname| 
      x = File.read("yaml/#{fname}.yml")
      for k in 1..DO_TIMES
        YAML::load(x)
      end
    }
  }

  bm.report("RbYAML") { 
    FILES.each {|fname| 
      x = File.read("yaml/#{fname}.yml")
      for k in 1..DO_TIMES
        RbYAML::dump(RbYAML::load(x))
      end
    }
  }
end
