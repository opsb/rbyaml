module YAMLTestCase8
  INPUT = <<-EDN
---
time: 20:03:20
player: Sammy Sosa
action: strike (miss)
...
---
time: 20:03:47
player: Sammy Sosa
action: grand slam
...
EDN
  EXPECTED = {"player"=>"Sammy Sosa", "time"=>72200, "action"=>"strike (miss)"}
end
