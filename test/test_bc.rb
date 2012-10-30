$: << File.join(File.dirname(__FILE__), "/../lib")
$: << File.join(File.dirname(__FILE__), "/../lib/basecustom")
require 'test/unit'
require 'basecustom'

class TestBaseCustom < Test::Unit::TestCase
  def test_base2
    base2 = BaseCustom.new('01')
    assert base2.base('00001') == 1
    assert base2.base('100110101') == 309
    assert base2.base(340) == "101010100"
    assert base2.base(0xF45) == "111101000101"
    assert base2.base(0b111) == "111"
  end
  
  def test_baseABC
    baseABC = BaseCustom.new('ABC')
    assert baseABC.base('ABC') == 5
    assert baseABC.base(123) == "BBBCA"
  end
  
  def test_base10
    base10 = BaseCustom.new('0123456789')
    assert base10.base(123) == "123"
    assert base10.base("123") == 123
  end
  
  def test_errors
    base2 = BaseCustom.new('01')
    assert_raise RuntimeError, LoadError do base2.base(:nonexistant); end
    assert_raise RuntimeError, LoadError do base2.base('abc'); end
    assert_raise RuntimeError, LoadError do base2.base(4.5); end
  end
end
