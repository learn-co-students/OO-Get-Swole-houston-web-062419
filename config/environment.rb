require 'pry'
require_relative '../lib/gym'
require_relative '../lib/lifter'
require_relative '../lib/membership'



l1 = Lifter.new("John", 55)
l2 = Lifter.new("Jack", 65)
l3 = Lifter.new("James", 75)

g1 = Gym.new("24 Hour Fitness")
g2 = Gym.new("Bally Total Fitness")
g3 = Gym.new("Fabulous by Fabio")


m1 = Membership.new(l1, g1, 30)
m2 = Membership.new(l1, g2, 60)
m3 = Membership.new(l2, g2, 60)
m4 = Membership.new(l2, g3, 100)
m5 = Membership.new(l3, g3, 100)







binding.pry
0
