require 'minitest/autorun'
require_relative '../lib/reverse'

class EffectTest < Minitest::Test
  def test_reverse
    effect = Reverse.new
    assert_equal 'ybuR si !nuf', effect.call('Ruby is fun!')
  end
end
