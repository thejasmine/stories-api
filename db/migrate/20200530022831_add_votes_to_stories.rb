class AddVotesToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :votes, :integer
  end
end
