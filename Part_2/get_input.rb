# frozen_string_literal: true

require_relative 'classes'
# data
a = Int.new(rand(1_000_000))
a.prt
puts ''

b = IntFloat.new(rand(1_000_000), rand(0.001...1000.001))
b.prt
