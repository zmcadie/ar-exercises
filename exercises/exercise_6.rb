require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Bob", last_name: "Spacer", hourly_rate: 60)
@store1.employees.create(first_name: "Jake", last_name: "Manly", hourly_rate: 60)
@store1.employees.create(first_name: "Grace", last_name: "Freeman", hourly_rate: 60)
@store2.employees.create(first_name: "Julie", last_name: "Bash", hourly_rate: 60)
@store2.employees.create(first_name: "Stanley", last_name: "Drake", hourly_rate: 60)