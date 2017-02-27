# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  user = User.create!(
    username: Faker::Pokemon.name,
    email: Faker::Internet.unique.free_email
  )
  Random.rand(1..6).times do
    user.posts.create!(
      title: Faker::Superhero.name,
      body: Faker::ChuckNorris.unique.fact
    )
  end

end
