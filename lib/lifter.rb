class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all
  	@@all
  end

  def memberships
  	Membership.all.select {|m| m.lifter == self}
  end

  def gyms
  	memberships.map {|m| m.gym}
  end

  def self.average_lift_total
  	all.sum {|l| l.lift_total}.to_f/all.size
  end

  def total_cost
  	memberships.sum {|m| m.cost}
  end

  def sign (gym, cost)
  	Membership.new(cost, self, gym)
  end

end
