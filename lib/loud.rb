class Loud
  attr_reader :level
  def initialize(level)
    @level = level
  end

  def call(words)
    words.split(' ').map { |word| word.upcase + '!' * self.level }.join(' ')
  end
end
