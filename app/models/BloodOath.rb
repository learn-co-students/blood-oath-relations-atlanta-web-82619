class BloodOath
    attr_reader :cult, :follower

    @@all = []

    def initialize (cult, follower, initiation_date = Date.today)
        @cult = cult
        @follower = follower
        @initiation_date = initiation_date
        @@all << self
    end

    def self.all
        @@all
    end

    def initiation_date
        @initiation_date.strftime("%Y-%m-%d")
    end
end