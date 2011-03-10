module YAMLTestCase18
  INPUT = <<-EDN
canonical: 1.23015e+3
exponential: 12.3015e+02
sexagecimal: 20:30.15
fixed: 1_230.15
negative infinity: -.inf
not a number: .NaN
EDN
  def self.assert_equal(real)
    return real && real.length == 6 && real["not a number"].nan? && real["negative infinity"].infinite? == -1 && real["canonical"] == 1230.15 && real["sexagecimal"] == 1230.15 && real["fixed"] == 1230.15 && real["exponential"] == 1230.15
  end
end
