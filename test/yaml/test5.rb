module YAMLTestCase5
  INPUT = <<-EDN
- [name        , hr, avg  ]
- [Mark McGwire, 65, 0.278]
- [Sammy Sosa  , 63, 0.288]
EDN
  EXPECTED = [["name", "hr", "avg"], ["Mark McGwire", 65, 0.278], ["Sammy Sosa", 63, 0.288]]
end
