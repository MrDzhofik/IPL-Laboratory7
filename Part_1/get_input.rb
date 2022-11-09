# frozen_string_literal: true

require_relative 'file'

# input
input = gets.split
input.map!(&:to_i)
f = Files.new(input)
f.read_first
f.filter
f.write_second
puts f.get
