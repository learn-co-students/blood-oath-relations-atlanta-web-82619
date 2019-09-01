require_relative '../config/environment.rb'
require 'date'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


c1 = Cult.new("Flatiron", "Atlanta", "We couldn't decide on a slogan.")
c2 = Cult.new("Apple", "San Diego", "We take your money.")
c3 = Cult.new("Facebook", "Cupertino", "We spy on your private calls!")
c4 = Cult.new("Instagram", "Cupertino", "Post it up!")
f1 = Follower.new("Alex", 24, "Sup.")
f2 = Follower.new("Nick", 27, "Ayyeee.")
f3 = Follower.new("Tim", 27, "I love you!")
f4 = Follower.new("Adrian", 25, "Dragon Con is awesome!")
f5 = Follower.new("Dan", 26, "Pew pew!")
f6 = Follower.new("Andy", 22, "Huzzah, bro!")
f7 = Follower.new("Marissa", 23, "Yay tattoos!")
f8 = Follower.new("Andrea", 30, "Getting it done.")
f9 = Follower.new("Mimi", 68, "You're so lazy!!!")
f10 = Follower.new("Grandpa", 84, "You got this!")
f11 = Follower.new("Test Me!", 5, "If I show up, you didn't do this right.")


x = BloodOath.new(f1, c1)
x2 = BloodOath.new(f2, c1)
x3 = BloodOath.new(f5, c1)
x4 = BloodOath.new(f3, c1)
x5 = BloodOath.new(f10, c1)

y = BloodOath.new(f3, c2)
y2 = BloodOath.new(f6, c2)
y3 = BloodOath.new(f7, c2)
y4 = BloodOath.new(f8, c2)
y5 = BloodOath.new(f10, c2)

z = BloodOath.new(f4, c3)
z2 = BloodOath.new(f8, c3)
z3 = BloodOath.new(f9, c3)
z4 = BloodOath.new(f10, c3)





binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits