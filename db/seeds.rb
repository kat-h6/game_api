# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Player.destroy_all
Score.destroy_all

20.times do
  Player.create!(name:Faker::Name.name)
  puts "player created"
end

30.times do
  Score.create!(
    timestamp: Faker::Time.between(from: DateTime.now - 5, to: DateTime.now + 2),
    game_score: rand(100..500),
    time_spent_seconds: rand(30..60),
    player_id: rand(Player.first.id..Player.last.id)
  )
  puts "score added"
end
