class Cult
    attr_reader :founding_year
    attr_accessor :name, :location, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self
    end

    def recruit_follower(follower)
        self.followers.include?(follower) ? "#{follower.name} is already in cult #{self.name}" : BloodOath.new(self, follower)
    end

    def oaths
        BloodOath.all.select{|oath| oath.cult == self}
    end

    def followers
       self.oaths.map{|oath| oath.follower} 
    end

    def cult_population
        self.followers.size
    end

    def average_age
        # self.followers.reduce(0) {|memo, follower| memo + follower.age} / self.cult_population.to_f
        self.followers.sum {|follower| follower.age} / self.cult_population.to_f
    end

    def my_followers_mottos
        self.followers.each {|follower| puts "#{follower.name}'s motto: #{follower.life_motto}"}
    end

    def self.least_popular
        # self.all.min {|a,b| a.cult_population <=> b.cult_population}
        self.all.min_by {|cult| cult.cult_population}
    end

    def self.most_common_location
        counts = {}
        self.all.each do |cult|
            if counts[cult.location]
                counts[cult.location] += 1
            else
                counts[cult.location] = 1
            end
        end
        counts.max_by{|key, value| value}[0]
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find{|cult| cult.name == name}
    end

    def self.find_by_location(location)
        self.all.select{|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        self.all.select{|cult| cult.founding_year == year}
    end
end