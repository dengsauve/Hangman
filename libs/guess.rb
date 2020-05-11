module Guess
  def check(guess, word_arr, word_line, guess_arr)
    unless is?(guess)
      return 0
    end

    if guess_arr.include?(guess)
      return 0
    end

    guess_arr << guess
    found = false
    word_arr.each_with_index do |l, i|
      if l == guess
        word_line[i] = l
        found = true
      end
    end

    found ? 0 : 1
  end

  def is?(guess)
    guess =~ /[A-Za-z]/
  end
end