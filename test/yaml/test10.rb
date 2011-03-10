module YAMLTestCase10
  INPUT = <<-EDN
---
hr:
  - Mark McGwire
  # Following node labeled SS
  - &SS Sammy Sosa
rbi:
  - *SS # Subsequent occurrence
  - Ken Griffey
EDN
  val1 = "Sammy Sosa"
  EXPECTED = {"hr" => ["Mark McGwire",val1], "rbi"=>[val1,"Ken Griffey"]}
end
