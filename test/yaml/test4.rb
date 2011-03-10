module YAMLTestCase4
  INPUT = <<-EDN
-
  name: Mark McGwire
  hr:   65
  avg:  0.278
-
  name: Sammy Sosa
  hr:   63
  avg:  0.288
EDN
  EXPECTED = [{"name"=>"Mark McGwire", "avg"=>0.278, "hr"=>65}, {"name"=>"Sammy Sosa", "avg"=>0.288, "hr"=>63}]
end
