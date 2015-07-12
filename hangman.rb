#!/usr/bin/env ruby

wordbank=['lion','charmander','software','github','turkmenistan','tirana','aruba','brasilia','washington','lincoln']

word_to_guess=wordbank.sample

secret= "_"*word_to_guess.size
puts "Try to guess the entire word or enter a character. The word is #{word_to_guess.size} characters long."
guess=""
tries=8
while tries != 0
  puts "You have #{tries} tries left."
  guess=gets.chomp
  if guess.size == 1
    if word_to_guess.include?(guess)
      tries-=1
      for i in (0..word_to_guess.size)
        if word_to_guess[i] == guess
          secret[i]=guess
        end
      end
      puts secret
      if secret.include?("_") == false
            puts "You made it."
            break
      end
    else
      puts "nope."
      tries-=1
    end
  elsif guess.size == word_to_guess.size && guess == word_to_guess
    puts "You made it."
    break
  else
    puts "nope."
    tries-=1
  end
end
