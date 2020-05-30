class Comment < ApplicationRecord
  belongs_to :story
  validates :name, presence: true
  validates :content, length: { minimum: 10 }
end
