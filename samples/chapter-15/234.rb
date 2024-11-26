require 'bundler/setup'

Bundler.require

puts Gimei.name
puts Gimei.address

puts Faker::Name.name
puts Faker::Address.full_address
