class AddAutherToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :author, :string
  end
end
