module YAMLTestCase2
  INPUT = <<-EDN
hr:  65
avg: 0.278
rbi: 147
EDN
  EXPECTED = {"rbi"=>147, "avg"=>0.278, "hr"=>65}
end
