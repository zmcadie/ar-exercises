require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

@store4 = Store.find(4)
Jul = @store4.employees.create(first_name: "Jullian", last_name: "Carrot", hourly_rate: 120)

puts Jul.password