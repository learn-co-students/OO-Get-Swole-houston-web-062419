class Lifter
  attr_accessor :name, :lift_total
  
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    # @membership = membership
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self  
    end
  end

  def gyms
    memberships.map do |membership|
      membership.gym
    end
  end

  def self.lifters
    self.all.sum do |k|
      k.lift_total / self.all.length
    end
  end

  def total_cost
    memberships.map.sum do |membership|
      membership.cost
    end
  end

  def new_membership(gym, cost)
    Membership.new(self, gym, cost)
  end





  
end
