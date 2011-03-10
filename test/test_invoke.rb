

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


def methoda
  10000+1
end

DO_TIMES = 1000000
ttimes = Time.time(DO_TIMES) { 
  methoda
}

ttimes2 = Time.time(DO_TIMES) { 
  send(:methoda)
}

puts "direct invoke: #{ttimes}"
puts "send invoke: #{ttimes2}"
