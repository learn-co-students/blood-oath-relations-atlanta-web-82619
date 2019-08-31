class BloodOath
  attr_reader :initiation_date
  attr_accessor :cult, :follower

  @@all = []
  def initialize(cult, follower)
    @cult = cult
    @follower = follower
    @initiation_date = Time.now
    @@all << self
  end
# DONE: returns a String that is the initiation date of this blood oath in the format YYYY-MM-DD
  def initiation_date
    @initiation_date.strftime("%Y-%m-%d")
  end

  def self.all
    @@all
  end

  def self.first_oath
    @@all.first.follower
  end

end