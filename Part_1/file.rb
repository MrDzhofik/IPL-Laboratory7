# frozen_string_literal: true

# Create and write
class Files
  def initialize(arr)
    @name = '/home/mrdzhofik/User/Dzhafarov/3 semester/IPL/Lab work/IPL-Laboratory7/Part_1/numbers.txt'
    @second = '/home/mrdzhofik/User/Dzhafarov/3 semester/IPL/Lab work/IPL-Laboratory7/Part_1/modified.txt'
    file = File.new(@name, 'w')
    file.syswrite(arr)
  end

  def read_first
    file = File.new(@name, 'r')
    @gil = file.read[1...-1].split(',')
    file.close
  end

  def filter
    @gil.map!(&:to_i)
    @gil.select! { |elem| (elem % 3).zero? & (elem % 7).nonzero? }
  end

  def write_second
    file_sec = File.new(@second, 'w')
    file_sec.syswrite(@gil)
    file_sec.close
    file_sec = File.new(@second, 'r')
    @sec = file_sec.read[1...-1].split(',').map!(&:to_i)
  end

  def get
    p 'Second file:'
    @sec
  end
end

def create_random_array(len)
  Array.new(len) { rand(0...1000) }
end
