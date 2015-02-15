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
    assert_raise RuntimeError, LoadError do BaseCustom.new(%w[:a :b :c]); end
    assert_raise RuntimeError, LoadError do BaseCustom.new(0..9); end
    assert_raise RuntimeError, LoadError do BaseCustom.new(['0','1',2]); end
    assert_raise RuntimeError, LoadError do BaseCustom.new("123", //); end
  end
  
  def test_delim
    base = BaseCustom.new([ 'a', 'bb', 'ccc', 'dddd' ], ' ' )
    assert base.base( 20 ) == 'bb bb a '
    assert base.base( 'bb bb a ' ) == 20  
  end
  
  def test_delim_music
    baseMusic = BaseCustom.new( %w[A A# B C C# D D# E F F# G G#], ' ' )
    assert baseMusic.base( (Math::PI * 100000000).to_i ) == "F F# B D# D A# D# F# "
    assert baseMusic.base( "F F# B D# D A# D# F# " ) == (Math::PI * 100000000).to_i
  end
  
  def test_multi_with_delim
    baseMND = BaseCustom.new(%w(aa bb cc), ':')
    assert baseMND.base(12) == "bb:bb:aa:"
    assert baseMND.base("bb:bb:aa:") == 12
  end
  
  def test_multi_in_string_with_delim
    baseMND = BaseCustom.new("aa:bb:cc", ':')
    assert baseMND.base(12) == "bb:bb:aa:"
    assert baseMND.base("bb:bb:aa:") == 12
  end

  def test_special_characters
    baseSC = BaseCustom.new("\n 0 1 \t", " ")
    assert baseSC.base(12345) == "\t \n \n \n \t 1 0 "
    baseSC = BaseCustom.new(["\n", "0", "1", "\t"])
    assert baseSC.base(12345) == "\t\n\n\n\t10"
  end
end
