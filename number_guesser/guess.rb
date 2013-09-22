require 'rubygems' 
require 'io/console'

puts "Tell me the correct number"
@correct_number = STDIN.noecho(&:gets).chomp.to_i

def number_range_checker(correct_number)
  if correct_number.between?(1,20)
    puts "That number will work!"
  else 
    puts "The number must be between 1 and 20"
    @correct_number = STDIN.noecho(&:gets).chomp.to_i
    number_range_checker(@correct_number)
  end
end 

number_range_checker(@correct_number)
puts "Guess what the correct number is!"

def is_this_the_right_number(number)
  if number == @correct_number
    puts "You got it! Great guess."
  else
    puts "Good try, but that's not it!"
    @subsequent_guess = gets.chomp.to_i
    is_this_the_right_number(@subsequent_guess)
  end
end

@first_guess = gets.chomp.to_i
is_this_the_right_number(@first_guess)








