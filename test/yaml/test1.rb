module YAMLTestCase1
  INPUT = <<-EDN
- Mark McGwire
- Sammy Sosa
- Ken Griffey
EDN
  EXPECTED = ["Mark McGwire","Sammy Sosa","Ken Griffey"]
end
