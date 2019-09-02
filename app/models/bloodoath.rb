require "date"
require "pry"

class BloodOath

    attr_accessor :initiation_date, :cult, :follower

    @@all = []

    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @initiation_date = Date.today
        @@all << self
    end

    def self.all
        @@all
    end

end

#binding.pry

