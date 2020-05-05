class CreateCharacterComicsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :character_comics do |t|
      t.integer :comic_id
      t.integer :character_id
    end
  end
end
