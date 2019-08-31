class Cult
  attr_reader :name, :location, :founding_year, :slogan, :minimum_age

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @minimum_age = 18
    # @followers = []
    @@all << self
  end

  def recruit_follower(follower)
    oath = BloodOath.new(self, follower)
    oath.cult = self
  end

  def cult_population
    BloodOath.all.select {|oath| oath.cult == self }.size
  end

  def followers
    oaths = BloodOath.all.select {|oath| oath.cult == self }
    followers = oaths.map {|oath| oath.follower}
  end

  def average_age
    ages = followers.map {|follower| follower.age.to_f}
    ages.sum / ages.size
  end

  def my_followers_mottos
    followers.each {|follower| puts "#{follower.life_motto}"}
    # mottos = followers.map {|follower| follower.life_motto}
    # mottos.each {|motto| puts motto}
  end

  def self.least_popular
    @@all.min {|cult1, cult2| cult1.cult_population <=> cult2.cult_population}
  end

  def self.most_common_location
    locations = @@all.map {|cult| cult.location}
    locations.max_by {|i| locations.count(i)}
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find {|cult| cult.name == name}
  end

  def self.find_by_location(location)
    @@all.select {|cult| cult.location == location}
  end

  def self.find_by_founding_year(founding_year)
    @@all.select {|cult| cult.founding_year == founding_year}
  end
end