$:.unshift File.join(File.dirname(__FILE__), "..", "lib")

require 'rbyaml'
require 'test/unit'
require 'rubygems'

class TestRbYAML < Test::Unit::TestCase
  def test_basic_load
    assert_equal({"A"=>"b","c"=>3.14},RbYAML.load("--- \nA: b\nc: 3.14\n"))
    assert_equal(["A","b","c"],RbYAML.load("--- \n- A\n- b\n- c\n"))
    assert_equal("foo",RbYAML.load("foo\n"))
  end

  def test_basic_dump
    answ,ver1,ver2 = RbYAML.dump({"A"=>"b","c"=>3.14}),"--- \nA: b\nc: 3.14\n", "--- \nc: 3.14\nA: b\n"
    assert_equal(true, ver1 == answ || ver2 == answ,"was #{answ.inspect} but should be #{ver1.inspect} or #{ver2.inspect}")
    assert_equal("--- \n- A\n- b\n- c\n",RbYAML.dump(["A","b","c"]))
    assert_equal("--- foo\n",RbYAML.dump("foo"))
  end

  def test_dump_empty
    assert_equal("--- \n",RbYAML.dump(nil))
  end

  def test_dump_nil_as_empty
    assert_equal("--- \na: \n",RbYAML.dump({"a"=>nil}))
  end

  def test_load_gems2
    RbYAML.load(File.read("yaml/gems2.yml"))
  end
end

class TestRbYAMLFromFiles < Test::Unit::TestCase
  FROM_TEST = 1
  TO_TEST = 20
  for i in FROM_TEST..TO_TEST
    self.class_eval <<-ENDCLS
    def test_#{i}_load
      require 'yaml/test#{i}.rb'
      dt = YAMLTestCase#{i}::INPUT
      if YAMLTestCase#{i}.respond_to?(:assert_equal)
        assert_equal(true,YAMLTestCase#{i}::assert_equal(RbYAML.load(dt)))
      else
        ex = YAMLTestCase#{i}::EXPECTED
        assert_equal(ex,RbYAML.load(dt))
      end
    end

    def test_#{i}_dump
      require 'yaml/test#{i}.rb'
      dt = YAMLTestCase#{i}::INPUT
      val = RbYAML.load(RbYAML.dump(RbYAML.load(dt)))
      if YAMLTestCase#{i}.respond_to?(:assert_equal)
        assert_equal(true,YAMLTestCase#{i}::assert_equal(val))
      else
        ex = YAMLTestCase#{i}::EXPECTED
        assert_equal(ex,val)
      end
    end
ENDCLS
  end
end
