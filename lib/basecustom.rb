# BaseCustom
# by Daniel P. Clark
# MIT License
# Define any base conversion with any identifier for each value.
$: << File.join(File.dirname(__FILE__), "/basecustom")
require 'basecustom/version'

class BaseCustom
  def initialize(array_in)
    if array_in.is_a?(String)
      array_in = array_in.split('')
    end
    if not array_in.is_a?(Array)
      raise "Invalid type. Please provide a String or an Array."
    end
    @BASE_PRIMITIVES_ARRAY = array_in.flatten
    @BASE_PRIMITIVES_HASH = Hash[@BASE_PRIMITIVES_ARRAY.each_with_index.map {|x,idx| [x, idx]}]
  end # initialize

  def base(input_val)
    if input_val.is_a?(String)
      if input_val.split('').any? { |i| not @BASE_PRIMITIVES_ARRAY.include?(i) }
        raise "Characters used are not in predefined base!"
      end
      i, i_out = 0, 0
      input_val.split(//).reverse.each do |c|
        place = @BASE_PRIMITIVES_HASH.size ** i
        i_out += @BASE_PRIMITIVES_HASH[c] * place
        i += 1
      end
      i_out
    # end input_val.is_a?(String)
    elsif input_val.is_a?(Integer)
       return "0" if input_val == 0
       number = input_val
       result = ''
       while(number != 0)
          result = @BASE_PRIMITIVES_ARRAY[number % @BASE_PRIMITIVES_ARRAY.size ].to_s + result
          number /= @BASE_PRIMITIVES_ARRAY.size
       end
      result
    # end input_val.is_a?(Integer)
    else
      raise "#{input_val.class} is not a supported type!"
    end
  end # base
end # class BaseCustom
