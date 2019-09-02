require "date"
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

apple = Cult.new("Apple", "Atlanta")
banana = Cult.new("Banana", "Bahamas")
grape = Cult.new("Grape", "Guantanamo")
peach = Cult.new("Peach", "Atlanta")

jim = Follower.new("Jim", 30)
pam = Follower.new("Pam", 28)
andy = Follower.new("Andy", 40)
andrea = Follower.new("Andrea", 37)
dan = Follower.new("Dan", 25)
cherie = Follower.new("Cherie", 25)
raza = Follower.new("Raza", 25)
alex = Follower.new("Alex", 25)
justina = Follower.new("Justina", 37)
danny = Follower.new("Danny", 32)

andrea.join_cult(apple)
dan.join_cult(apple)
cherie.join_cult(apple)
raza.join_cult(apple)
alex.join_cult(apple)
justina.join_cult(apple)
danny.join_cult(apple)



blood1 = BloodOath.new(apple, andy)
apple.recruit_follower(jim)
pam.join_cult(apple)
andrea.join_cult(apple)
dan.join_cult(apple)
pam.join_cult(apple)
pam.join_cult(apple)
puts apple.followers
puts Cult.cult_population
puts Cult.find_by_location("Atlanta")
puts Follower.of_a_certain_age(30)


#binding.pry
