class Follower
  attr_reader :name, :age
  attr_accessor :life_motto

  @@all = []
  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def cults
    BloodOath.all.select {|oath| oath.follower == self }.map {|oath| oath.cult}
  end

  def how_many_cults
    cults.size
  end

  def my_cults_slogans
    cults.each {|cult| puts "#{cult.slogan}"}
  end

  def join_cult(cult)
    if @age < cult.minimum_age
      p "Sorry, you can't join because you're too young."
    else
      oath = BloodOath.new(cult, self)
    oath.follower = self
    end
    
  end

  def fellow_cult_members
    members = cults.map {|cult| cult.followers}.flatten
    fellow_members = members.reject {|member| member == self}.uniq
  end

  def self.most_active
    @@all.max {|follower1, follower2| follower1.cults.size <=> follower2.cults.size}
  end

  #DONE : top 10 most active followers, follower in most cults
  def self.top_ten
    @@all.max(10) {|f1, f2| f1.how_many_cults <=> f2.how_many_cults}
  end
end