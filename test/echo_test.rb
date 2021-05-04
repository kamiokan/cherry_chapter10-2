require 'minitest/autorun'
require_relative '../lib/echo'

class EffectTest < Minitest::Test
  def test_echo
    effect = Echo.new(2)
    assert_equal 'RRuubbyy iiss ffuunn!!', effect.call('Ruby is fun!')
  end
end

