# frozen_string_literal: true

# Create and write
class Files
  def initialize(arr)
    @name = 'numbers.txt'
    @second = 'modified.txt'
    @file = File.new(@name, 'w')
    @file.syswrite(arr)
  end

  def read_first
    @file = File.new(@name, 'r')
    @g = @file.read[1...-1].split(',')
    @file.close
  end

  def filter
    @g.map!(&:to_i)
    @g.select! { |elem| (elem % 3).zero? & (elem % 7).nonzero? }
  end

  def write_second
    @file2 = File.new(@second, 'w')
    @file2.syswrite(@g)
    @file2.close
    @file2 = File.new(@second, 'r')
    @en = @file2.read[1...-1].split(',').map!(&:to_i)
    @file2.close
  end

  def get
    p 'Second file:'
    @en
  end
end

def create_random_array(len)
  Array.new(len) { rand(0...1000) }
end
