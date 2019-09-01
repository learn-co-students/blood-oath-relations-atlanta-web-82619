class BloodOath
    attr_reader :follower, :cult, :date
    @@all = []

    def initialize(follower, cult, date = Date.today.to_s)
        @follower = follower
        @cult = cult
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        self.all.first.follower
    end

    
end