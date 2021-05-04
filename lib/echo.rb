class Echo
  attr_reader :rate
  def initialize(rate)
    @rate = rate
  end

  def call(words)
    words.chars.map { |c| c == ' ' ? c : c * self.rate }.join
  end
end
