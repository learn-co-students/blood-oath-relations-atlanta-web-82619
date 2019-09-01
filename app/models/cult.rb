class Cult
    require 'date'
    attr_reader :name, :location, :year, :slogan, :minimum_age
    @@all = []

    def initialize(name, location, slogan, year = Date.today.year)
        @name = name
        @location = location
        @minimum_age = 16
        @year = year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def followers
        followers = []
        BloodOath.all.each { |oaths| followers << oaths.follower if oaths.cult == self }
        followers
    end

    def recruit_follower(follower)
        if follower.age < self.minimum_age
            "We're sorry. You don't meet the minimum age requirements to perform a blood oath and join our cult!"
        else
            BloodOath.new(follower, self)
        end
    end

    def cult_population
        self.followers.length
    end

    def self.find_by_name(cult_name)
        self.all.select { |cults| cults.name == cult_name }
    end

    def self.find_by_location(cult_city)
        self.all.select { |cults| cults.city == cult_city }
    end

    def self.find_by_founding_year(year)
        self.all.select { |cults| cults.year == year }
    end

    def average_age
        (self.followers.inject(0) { |x, y| x + y.age }.to_f / self.followers.length).round(2)
    end

    def my_followers_motto
        self.followers.map { |f| f.motto}
    end

    def self.least_popular
        self.all.min { |a, b| a.cult_population <=> b.cult_population }
    end

    def self.most_common_location
        location = self.all.map { |cult| cult.location }
        location.max_by { |i| location.count(i) }
    end
    
end