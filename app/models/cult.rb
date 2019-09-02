require "pry"
class Cult

    attr_accessor :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = "Join us, we have Cool-aid!"
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end

    def self.cult_population
        self.all.size
    end

    def self.find_by_name(name)
        self.all.find {|cult| cult.name == name}
    end

    def self.find_by_location(location)
        self.all.find {|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        self.all.find {|cult| cult.founding_year == year}
    end

    def followers
        followers = []
        BloodOath.all.each do |oath|
            if oath.cult == self
                followers << oath.follower.name
            end
        end
        followers
    end

end


#apple = Cult.new("Apple", "Atlanta")

#puts apple
#binding.pry

