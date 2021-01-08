module Two
  def display_workshop(workshop)
    puts "Don't trust module one"
    useful_information(workshop)
  end

  def useful_information(workshop)
    super
  end
end
