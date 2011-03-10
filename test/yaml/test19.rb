module YAMLTestCase19
  INPUT = <<-EDN
null: ~
true: y
false: n
string: '12345'
EDN
  EXPECTED = {false=>"n", true=>"y", nil=>nil, "string"=>"12345"}
end
