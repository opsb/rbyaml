$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

class Module
  def add_tracer(meth)
    m_alias = case meth
                when :+ : "old_plus"
                when :=== : "old_triple"
                when :== : "old_eq"
                else ; "old_#{method}"
              end
  module_eval %Q{ 
    alias :#{m_alias} :#{meth}
    def #{meth}(*args,&block)
      puts caller[0] + ": " + self.class.name + "##{meth} called"
      #{m_alias}(*args,&block)
    end
  }
  end
end

#Kernel.add_tracer(:===)
#Kernel.add_tracer(:==)
#Fixnum.add_tracer(:+)

require 'profile'
require 'rbyaml'

FILES = %w{test1 test2 test3 test4 test5 test6 test7 test8 test9 test10 test12 test13 test14 test16 test18 test19 test20 gems2}
FILES.each {|fname| 
  RbYAML::load(File.read("yaml/#{fname}.yml"))
}

