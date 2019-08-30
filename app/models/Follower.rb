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

    def fellow_cult_members
        list = []
        self.cults.each do |cult|
            cult.followers.each {|follower| list << follower}
        end
        list.uniq.delete_if {|follower| follower == self}
    end

    def cult_count
        self.oaths.size
    end

    def join_cult(cult)
        if self.age < cult.minimum_age
            puts "rejected: too young"
        elsif self.cults.include?(cult)
            puts "#{self.name} is already in cult #{cult.name}" 
        else 
            BloodOath.new(cult, self)
        end
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