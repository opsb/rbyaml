module YAMLTestCase7
  INPUT = <<-EDN
# Ranking of 1998 home runs
---
- Mark McGwire
- Sammy Sosa
- Ken Griffey

# Team ranking
---
- Chicago Cubs
- St Louis Cardinals
EDN
  EXPECTED = ["Mark McGwire","Sammy Sosa","Ken Griffey"]
end
