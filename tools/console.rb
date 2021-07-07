# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
l1 = Lifter.new("Chuck", 100)
l2 = Lifter.new("Rock", 10)
l3 = Lifter.new("IronPants", 200)

g1 = Gym.new("Planet Fitness")
g2 = Gym.new("World of Fitness")
g3 = Gym.new("Skyline")

Membership.new(10, l1, g1)
Membership.new(20, l1, g2)

Membership.new(20, l2, g1)
Membership.new(35, l2, g3)

Membership.new(15, l3, g2)
Membership.new(35, l3, g3)


binding.pry

puts "Gains!"
