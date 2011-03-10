module YAMLTestCase6
  INPUT = <<-EDN
Mark McGwire: {hr: 65, avg: 0.278}
Sammy Sosa: {
    hr: 63,
    avg: 0.288
  }
EDN
  EXPECTED = {"Mark McGwire"=>{"avg"=>0.278, "hr"=>65}, "Sammy Sosa"=>{"avg"=>0.288, "hr"=>63}}
end
