# Basic save Doodah.
def checking(confirmation,idea_name)
  if confirmation == 'Y' 
    puts "Cool. Done."      
  elsif confirmation == 'N' 
    puts "Cool, give me a second..."
    File::delete( "idea-" + idea_name + ".txt" )
    puts "Done. Got rid of that for ya."
  else 
    puts "Please choose type Y(es) or N(o): "
    confirmation = gets.strip.upcase
    checking(confirmation,idea_name)
  end         
end

# Get message and new file name
puts "Enter body: "
idea = gets
puts "Please enter a name for the file: " 
idea_name = gets.strip
File::open( "Ruby Frape!! - " + idea_name + ".txt", "w" ) do |f|
  f << idea  
end

# Oh this shit is well weird
puts "All done! Here's what's inside of the file: "
x = File::read( "idea-" + idea_name + ".txt" )
puts '--- File Start ---'
p x
puts '--- File End ---'

# Check
puts "Do you want to save this? [Y/N]: "
confirmation = gets.strip.upcase
checking(confirmation,idea_name)