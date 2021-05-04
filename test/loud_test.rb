require 'minitest/autorun'
require_relative '../lib/loud'

class EffectTest < Minitest::Test
  def test_loud
    effect = Loud.new(2)
    assert_equal 'RUBY!! IS!! FUN!!!', effect.call('Ruby is fun!')

    effect = Loud.new(3)
    assert_equal 'RUBY!!! IS!!! FUN!!!!', effect.call('Ruby is fun!')
  end
end

