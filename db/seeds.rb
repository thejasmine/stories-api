Story.destroy_all

10.times do
  Story.create!(name:Faker::TvShows::GameOfThrones.character,
                text:Faker::TvShows::GameOfThrones.quote,
                author:Faker::Name.name,
                votes:[1,2,3,4,5].sample)
end
