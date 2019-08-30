require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Manson Family", "LA", 1967, "I don't do the killing")
cult2 = Cult.new("Jonestown", "Florida", 1980, "Drink the Kool-Aid!")

john = Follower.new("John", 30, "YOLO")
jane = Follower.new("Jane", 20, "Too young to die")
bob = Follower.new("Bob", 69, "Too old to die")

oath1 = BloodOath.new(cult1, john, 1934)
oath2 = BloodOath.new(cult2, jane, 2019)
oath3 = BloodOath.new(cult2, john, 1934)
oath4 = BloodOath.new(cult1, bob, 3000)

bob.join_cult(cult2, 1000)

binding.pry
