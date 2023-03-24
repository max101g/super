# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# 20.times do
#     Hero.create(
#         name:Faker::Restaurant.name,
#         super_name:Faker::Superhero.name
#     )
# end

20.times do
    Heropower.create(
        strength:Faker::Superhero.power,
        hero_id:Faker::Number.within(range: 1..20),
        power_id:Faker::Number.within(range: 1..20)
    )
end

# 20.times do
#     Power.create(
#         name:Faker::Superhero.power,
#         description:Faker::Lorem.sentence
#     )
# end
