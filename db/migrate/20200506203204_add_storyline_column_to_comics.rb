class AddStorylineColumnToComics < ActiveRecord::Migration[5.0]
  def change
    add_column :comics, :storyline, :string
  end
end
