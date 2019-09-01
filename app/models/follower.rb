class Follower
    attr_accessor :name, :age, :motto
    @@all = []

    def initialize(name, age, motto)
        @name = name
        @age = age
        @motto = motto
        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        cults = []
        BloodOath.all.select { |oaths| cults << oaths.cult if oaths.follower == self }.map { |oath| oath.cult }
    end

    def join_cult(cult)
        if self.age < cult.minimum_age
            "We're sorry. You don't meet the minimum age requirements to perform a blood oath and join our cult!"
        else
            BloodOath.new(self, cult)
        end      
    end

    def self.of_a_certain_age(age)
        self.all.select { |member| member.age == age }
    end

    def my_cults_slogans
        cults.map { |x| x.slogan }
    end

    def self.most_active
        self.all.max { |x, y| x.cults.size <=> y.cults.size }
    end

    def self.top_ten
        self.all.max(10) { |x, y| x.cults.size <=> y.cults.size }
    end

    def fellow_cult_members
        fellows = cults.map { |c| c.followers }.flatten
        fellows.reject { |m| m == self }.uniq
    end
end