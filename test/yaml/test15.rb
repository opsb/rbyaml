module YAMLTestCase15
  INPUT = <<-EDN
name: Mark McGwire
accomplishment: >
  Mark set a major league
  home run record in 1998.
stats: |
  65 Home Runs
  0.278 Batting Average
EDN
  EXPECTED = {"name"=>"Mark McGwire", "accomplishment"=>"Mark set a major league home run record in 1998.", "stats"=>"65 Home Runs\n0.278 Batting Average"}
end
