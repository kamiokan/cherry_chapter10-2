class Reverse
  def call(words)
    words.split(' ').map(&:reverse).join(' ')
  end
end
