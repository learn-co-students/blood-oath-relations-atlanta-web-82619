class Cult

  attr_reader :name, :location, :year, :slogan
  @@all = []

  def initialize(name, location, year, slogan)
    @name = name
    @location = location
    @year = year
    @slogan = slogan

    @@all << self
  end

  def self.all
    @@all
  end

  def recruit_follower(follower, date)
    BloodOath.new(self, follower, date)
  end

  def cult_population
    oaths = []
    BloodOath.all.find_all do | oath |
      if oath.cult == self
        oaths << oath.follower
      end
    end
    oaths.length
  end

  def self.find_by_name(cult_name)
    Cult.all.find {|a| a.name == cult_name}
  end

  def self.find_by_location(location_name)
    Cult.all.find {|a| a.location == location_name}
  end

  def self.find_by_founding_year(year)
    Cult.all.find {|a| a.year == year}
  end

end
