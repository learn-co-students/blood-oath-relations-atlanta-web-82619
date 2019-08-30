class Follower
    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize (name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def oaths
        BloodOath.all.select {|oath| oath.follower == self}
    end

    def cults
        self.oaths.map {|oath| oath.cult}
    end

    def cult_count
        self.oaths.size
    end

    def join_cult(cult)
        self.cults.include?(cult) ? "#{self.name} is already in cult #{cult.name}" : BloodOath.new(cult, self)
    end

    def my_cults_slogans
        self.cults.each{|cult| puts "#{cult.name}'s slogan: #{cult.slogan}'"}
    end

    def self.all
        @@all
    end

    def self.most_active
        self.all.max_by {|follower| follower.cult_count}
    end

    def self.top_ten
        self.all.max_by(10) {|follower| follower.cult_count}
    end

    def self.of_a_certain_age (age)
        self.all.select{|follower| follower.age >= age}
    end
end