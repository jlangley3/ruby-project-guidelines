class AddAuthorToComics < ActiveRecord::Migration[5.0]
  def change
    add_column :comics, :author, :string
  end
end
