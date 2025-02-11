# What is wrong with our display_info method?
#
# Navigate the code with 'next', 'step' or 'continue'.
#   next: jumps to the next line of the code
#   step: jumps inside a method
#   continue: keeps the program execution until it finds another breakpoint
#
# USEFUL
#   Information.ancestors
#   information.method(:display_info).super_method.source_location
#   backtrace or caller

require 'pry-byebug'
require_relative 'dependencies/cool_formatter.rb'
require_relative 'dependencies/workshop_formatter.rb'

class Information
  include WorkshopFormatter
  include CoolFormatter

  attr_reader :language, :version, :workshop

  def initialize(language, version, workshop)
    @language = language
    @version = version
    @workshop = workshop
  end

  def display_info
    puts "Disclaimer: This is useful information."
    super # What is this?
    puts "Disclaimer: This is not useful information."
  end
end

information = Information.new('Ruby', '2.7.1', 'Ruby debugging')

binding.pry # This is our breakpoint, the program will stop executing here
information.display_info
