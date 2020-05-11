module Draw
  @hangman_base_path = 'templates/'

  def hangman(stage)
    system("clear")
    puts File.read(@hangman_base_path + "hangman#{stage}.txt"), "\n"
  end

  def word_line(word_line)
    puts word_line.join('')
  end

  def guesses(guess_arr)
    puts "\nPrevious Guesses: #{guess_arr.join(', ')}"
  end
end