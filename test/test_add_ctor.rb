$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'ostruct'
require 'rbyaml'

class TrueClass; def to_sym; :true end; end and class FalseClass; def to_sym; :false end; end

data  = <<-"END"
---
x: 1
y: 2
z: 3
END

datay = <<-"END"
---
&verily
lemurs:
  unite: *verily
  beneath:
    - patagonian
    - bread
    - products
thusly: [1, 2, 3, 4] 
END

datax = <<-"END"
---
foo: 1
bar:
  baz: [1, 2, 3]
  quux: 42
  doctors:
    - William Hartnell
    - Patrick Troughton
    - Jon Pertwee
    - Tom Baker
    - Peter Davison
    - Colin Baker
    - Sylvester McCoy
    - Paul McGann
    - Christopher Eccleston
    - David Tennant
  a: {x: 1, w: 2, z: 3}
END

RbYAML.add_builtin_ctor("map") {|ctor,node|
  OpenStruct.new(ctor.construct_mapping(node))
}

puts RbYAML.load(data)
