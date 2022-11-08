# frozen_string_literal: true

# class Int
class Int
  def initialize(number)
    @value = number
    @len = @value.to_s.length
  end

  def prt
    puts "Value: #{@value}"
    puts "Length: #{@len}"
  end
end

# class IntFloat
class IntFloat < Int
  def initialize(number, num)
    super(number)
    @fl = num
  end

  def prt
    super
    puts "Float value: #{@fl.round(2)}"
  end
end
