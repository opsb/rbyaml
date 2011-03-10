module YAMLTestCase13
  INPUT = <<-EDN
---
  Mark McGwire's
  year was crippled
  by a knee injury.
EDN
  EXPECTED = "Mark McGwire's year was crippled by a knee injury."
end
