# herein goes faker data
require 'faker'

10.times do
  unique_id = rand(1000).to_s
  Teacher.create(name: (Faker::Lorem.word + unique_id), email: (Faker::Lorem.word + unique_id), 
    address: Faker::Lorem.word, phone_number: Faker::Lorem.word, )
end

50.times do
  Student
end
