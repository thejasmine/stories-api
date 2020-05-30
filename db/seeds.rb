Story.destroy_all
Comment.destroy_all

10.times do
  s = Story.create!(name:Faker::TvShows::GameOfThrones.character,
                    text:Faker::TvShows::GameOfThrones.quote,
                    author:Faker::Team.creature,
                    votes:[1,2,3,4,5].sample)
  rand(1..5).times do
    Comment.create!(name:Faker::Team.state,
                    content:"this is test cotent data more than 10 words",
                    story_id:s.id)
  end
end
