module YAMLTestCase9
  INPUT = <<-EDN
---
hr: # 1998 hr ranking
  - Mark McGwire
  - Sammy Sosa
rbi:
  # 1998 rbi ranking
  - Sammy Sosa
  - Ken Griffey
EDN
  EXPECTED = {"hr" => ["Mark McGwire", "Sammy Sosa"], "rbi" => ["Sammy Sosa", "Ken Griffey"]}
end
