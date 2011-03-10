module YAMLTestCase17
  INPUT = <<-EDN
canonical: 12345
decimal: +12_345
sexagecimal: 3:25:45
octal: 014
hexadecimal: 0xC
EDN
  EXPECTED = {"hexadecimal"=>12, "canonical"=>12345, "sexagecimal"=>12345, "octal"=>12, "decimal"=>12345}
end
