require_relative 'libs/draw'
require_relative 'libs/guess'

include Draw
include Guess

enable_dict = 'list/enable1.txt'

word = File.readlines(enable_dict).sample.chomp
word_arr = word.split('')
guess_arr = []

word_line = Array.new(word_arr.length, '.')

solved = false
stage = 0

until solved || stage == 6
  Draw.hangman(stage)
  Draw.word_line(word_line)
  Draw.guesses(guess_arr)

  print "\nGuess a letter: "
  guess = gets.chomp

  increment = Guess.check(guess, word_arr, word_line, guess_arr)

  if word_arr == word_line
    solved = true
    break
  end

  stage += increment
end

unless solved
  Draw.hangman('')
  puts "\nThe word was: #{word}, better luck next time."
  exit
end

system("clear")

Draw.word_line(word_line)
puts "\nYou Win!"
