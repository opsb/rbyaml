module YAMLTestCase3
  INPUT = <<-EDN
american:
  - Boston Red Sox
  - Detroit Tigers
  - New York Yankees
national:
  - New York Mets
  - Chicago Cubs
  - Atlanta Braves
EDN
  EXPECTED = {"national"=>["New York Mets", "Chicago Cubs", "Atlanta Braves"], "american"=>["Boston Red Sox", "Detroit Tigers", "New York Yankees"]}
end
