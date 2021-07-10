class Gym
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.gym == self 
    end
  end

  def lifters
    memberships.map do |membership|
      membership.lifter
    end
  end

  def lifters_name
    lifters.map do |membership|
      membership.name
    end
  end

  def lift_total
    lifters.map.sum do |membership|
      membership.lift_total
    end
  end

end
