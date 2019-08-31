require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
andrea = Follower.new("Andrea", 37, "Do to others what you want them to do to you." )
dan = Follower.new("Dan", 26, "There's no vibration in stagnance.")
cherie = Follower.new("Cherie", 25, "Just do it.")
raza = Follower.new("Raza", 24, "Be responsible.")
nick = Follower.new("Nick", 26, "Let's go skiing.")
alex = Follower.new("Alex", 24, "This makes so much sense.")
mark = Follower.new("Mark", 30, "Is there cake?")
danny = Follower.new("Danny", 28, "Nice hat.")
andrew = Follower.new("Andrew", 26, "Seattle is pretty nice." )
hanaa = Follower.new("Hanaa", 27, "Chips & queso, anyone?")
princeton = Follower.new("Princeton", 25, "I can help.")
penny = Follower.new("Penny", 7, "When do we eat?")

flatiron = Cult.new("Flatiron", "Atlanta", 2012, "Learn, love, code.")
digital_crafts = Cult.new("Digital Crafts", "Atlanta",2016, "We build the web.")
general_assembly = Cult.new("General Assembly", "Atlanta", 2011, "General Assembly is the solution 
  to the global skills gap.")
ga_dc = Cult.new("General Assembly", "Washington D.C.", 2011, "Code is life.")
kindercare = Cult.new("KinderCare", "Atlanta", 1969, "KinderCare Kids do better")

andrea.join_cult(flatiron)
dan.join_cult(flatiron)
cherie.join_cult(digital_crafts)
andrea.join_cult(digital_crafts)
cherie.join_cult(general_assembly)
cherie.join_cult(flatiron)
nick.join_cult(flatiron)
alex.join_cult(flatiron)
raza.join_cult(flatiron)
nick.join_cult(flatiron)
alex.join_cult(flatiron)
mark.join_cult(flatiron)
danny.join_cult(flatiron)
andrew.join_cult(flatiron)
hanaa.join_cult(flatiron)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
