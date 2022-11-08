# frozen_string_literal: true

require_relative 'file'

# test
RSpec.describe Files do
  it 'should return right values' do
    f = Files.new([21, 54, 66, 84, 105, 108])
    f.read_first
    f.filter
    f.write_second
    expect(f.get).to eq([54, 66, 108])
  end

  it 'should create file' do
    a = File.exist?('numbers.txt')
    b = File.exist?('modified.txt')
    expect(a).to eq(b)
  end

  it 'should return right values with random numbers' do
    a = create_random_array(25)
    f = Files.new(a)
    f.read_first
    f.filter
    f.write_second
    a.select! { |elem| (elem % 3).zero? & (elem % 7).nonzero? }
    expect(f.get).to eq(a)
  end
end
