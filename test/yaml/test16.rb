module YAMLTestCase16
  INPUT = <<-EDN
plain:
  This unquoted scalar
  spans many lines.

quoted: "So does this
  quoted scalar.\\n"
EDN
  EXPECTED = {"plain"=>"This unquoted scalar spans many lines.", "quoted"=>"So does this quoted scalar.\n"}
end
