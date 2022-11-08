# frozen_string_literal: true

require_relative 'classes'
# test
RSpec.describe IntFloat do
  it 'should inherit from Int' do
    a = IntFloat.new(rand(1_000_000), rand(0.001...1000.001))
    expect(a.class.ancestors[1]).to eq(Int)
  end
end
