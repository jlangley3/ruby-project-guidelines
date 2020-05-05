class CreateCharactersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :alias
    end
  end
end
