# BaseCustom
# by Daniel P. Clark
# MIT License
# Define any base conversion with any identifier for each value.
$: << File.join(File.dirname(__FILE__), "/basecustom")
require 'basecustom/version'

class BaseCustom

  def initialize(array_in, delim = '')
    if array_in.is_a?(String)
      array_in = array_in.split(delim)
    end
    if not array_in.is_a?(Array)
      raise "Invalid type! Please provide a String or an Array."
    end
    array_in = array_in.flatten
    if array_in.any? { |i| not i.is_a?(String) }
      raise "Invalid type! Each array element must be a String."
    end
    if array_in.any? { |i| i.length > 1 }
      if delim.empty?
        raise "Error!  You must define a delimiter when using multiple characters for a base."
      end
    end
    @BASE_PRIMITIVES_ARRAY = array_in.uniq
    @BASE_PRIMITIVES_HASH = Hash[@BASE_PRIMITIVES_ARRAY.each_with_index.map {|x,idx| [x, idx]}]
    @delim = delim
  end # initialize

  def base(input_val)
    if input_val.is_a?(String)
      if input_val.split(@delim).any? { |i| not @BASE_PRIMITIVES_ARRAY.include?(i) }
        raise "Characters used are not in predefined base!"
      end
      i, i_out = 0, 0
      input_val.split(@delim).reverse.each do |c|
        place = @BASE_PRIMITIVES_HASH.size ** i
        i_out += @BASE_PRIMITIVES_HASH[c] * place
        i += 1
      end
      i_out
    # end input_val.is_a?(String)
    elsif input_val.is_a?(Integer)
       return @BASE_PRIMITIVES_HASH.first[0] if input_val == 0
       number = input_val
       result = ''
       while(number != 0)
          result = @BASE_PRIMITIVES_ARRAY[number % @BASE_PRIMITIVES_ARRAY.size ].to_s + @delim + result
          number = Integer(number/@BASE_PRIMITIVES_ARRAY.size)
       end
      result
    # end input_val.is_a?(Integer)
    else
      raise "#{input_val.class} is not a supported type!"
    end
  end # base

  def length
    return @BASE_PRIMITIVES_ARRAY.length
  end

  def all
    return @BASE_PRIMITIVES_ARRAY.join(@delim)
  end
end # class BaseCustom
