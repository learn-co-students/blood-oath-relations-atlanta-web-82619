require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

f1 = Follower.new('follower1', 15, 'motto1')
f2 = Follower.new('follower2', 12, 'motto2')
f3 = Follower.new('follower3', 18, 'motto3')


c1 = Cult.new('cult1', 'location1', 2018, 'slogan1')
c2 = Cult.new('cult2', 'location2', 2015, 'slogan2')
c3 = Cult.new('cult3', 'location3', 2010, 'slogan3')


b1 = BloodOath.new(c1, f1)
b2 = BloodOath.new(c2, f2, Time.new(2008))
b3 = BloodOath.new(c3, f3, Time.new(2001))

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
