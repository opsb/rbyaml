$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'rbyaml'

class Time
  def self.time(times = 1)
    if block_given?
      before = Time.now
      times.times { 
        yield
      }
      after = Time.now
      return after-before
    end
  end
end

FILES = %w{test1 test2 test3 test4 test5 test6 test7 test8 test9 test10 test12 test13 test14 test16 test18 test19 test20 gems2}
ttimes = 0
DO_TIMES = 100
FILES.each {|fname| 
  x = File.read("yaml/#{fname}.yml")
  ttimes += Time.time(DO_TIMES) { 
    RbYAML::load(x)
  }
}

#ttimes2 = Time.time(DO_TIMES) { 
#  RbYAML::dump(open("yaml/test1.yml") { |f| RbYAML::load(f) })
#} - ttimes

puts "loading a file #{DO_TIMES*FILES.length} times took #{ttimes.to_f * 1000} milli seconds"

#puts "dumping a file #{DO_TIMES} times took #{ttimes2.to_f * 1000} milliseconds"
