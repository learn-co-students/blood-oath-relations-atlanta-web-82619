require "pry"
class Follower

    attr_accessor :name, :age, :life_motto, :cult

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @cult = cult
        @life_motto = "Life's better in a cult!"
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        Cult.all.select {|cult| cult.follower == self}
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    def self.of_a_certain_age(age)
        self.all.select {|follower| follower.age == age}
    end
end

jim = Follower.new("Jim", 35)
puts jim.life_motto

#binding.pry
