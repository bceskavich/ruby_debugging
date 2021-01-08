# It seems our "format_info" method is not printing our information correctly.
# What could be wrong with it?

# Navigate the code with 'next', 'step' or 'continue'.
#   next: jumps to the next line of the code
#   step: jumps inside a method
#   continue: keeps the program execution until it finds another breakpoint

require 'pry-byebug'

def format_info(data)
  puts "Framework: #{data[0]}"
  puts "Version: #{data[1]}"
  puts "Workshop: #{data[2]}"
end

binding.pry # This is our breakpoint, the program will stop executing here

information = ['Ruby', '2.7.1', 'Ruby debugging']
format_info(information)
