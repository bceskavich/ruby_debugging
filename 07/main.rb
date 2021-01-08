# This is becoming complex, can you find the proper method to log our code?
#
# Navigate the code with 'next', 'step' or 'continue'.
#   next: jumps to the next line of the code
#   step: jumps inside a method
#   continue: keeps the program execution until it finds another breakpoint
#
# USEFUL
#   information.methods - 1.methods
#   information.methods.grep /something/

require 'pry-byebug'
require_relative 'dependencies/one.rb'
require_relative 'dependencies/two.rb'
require_relative 'dependencies/three.rb'
require_relative 'dependencies/four.rb'
require_relative 'dependencies/five.rb'

class Information
  include One
  include Two
  include Three
  include Four
  include Five

  attr_reader :language, :version, :workshop

  def initialize(language, version, workshop)
    @language = language
    @version = version
    @workshop = workshop
  end

  def log
    i_can_log(language, version, workshop)
  end
end

binding.pry # This is our breakpoint, the program will stop executing here
information = Information.new('Ruby', '2.7.1', 'Ruby debugging')
information.log
