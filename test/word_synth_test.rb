require 'minitest/autorun'
require_relative '../lib/word_synth'
require_relative '../lib/echo'
require_relative '../lib/loud'
require_relative '../lib/reverse'

class WordSynthTest < Minitest::Test
  def test_play_with_reverse
    synth = WordSynth.new
    synth.add_effect(Reverse.new)
    assert_equal 'ybuR si !nuf', synth.play('Ruby is fun!')
  end

  def test_play_with_many_effects
    synth = WordSynth.new
    synth.add_effect(Echo.new(2))
    synth.add_effect(Loud.new(3))
    synth.add_effect(Reverse.new)
    assert_equal '!!!YYBBUURR !!!SSII !!!NNUUFF', synth.play('Ruby is fun')
  end
end
