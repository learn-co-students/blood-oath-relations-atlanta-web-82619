class Follower

  attr_reader :name, :age, :life_motto
  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto

    @@all << self
  end

  def self.all
    @@all
  end

  def cults
    cult_list = []
    BloodOath.all.find_all do | oath |
      if oath.follower == self
        cult_list << oath.cult
      end
    end
    cult_list
  end

  def join_cult(cult, date)
    BloodOath.new(cult, self, date)
  end

  def self.of_a_certain_age(age)
    Follower.all.select { |a| a.age >= age }
  end

end
