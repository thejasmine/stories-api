json.stories do
  json.array! @stories do |story|
    json.extract! story, :id, :name, :text, :author, :votes
    json.comments story.comments do |comment|
      json.extract! comment, :id, :name, :content
      # here is the part we define our own data field
      json.date comment.created_at.strftime("%m/%d/%y")
      json.story_name comment.story.name
    end
  end
end
