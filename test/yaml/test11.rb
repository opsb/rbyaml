module YAMLTestCase11
  INPUT = <<-EDN
---
# products purchased
- item    : Super Hoop
  quantity: 1
- item    : Basketball
  quantity: 4
- item    : Big Shoes
  quantity: 1
EDN
  EXPECTED = [{"quantity"=>1, "item"=>"Super Hoop"}, {"quantity"=>4, "item"=>"Basketball"}, {"quantity"=>1, "item"=>"Big Shoes"}]
end
