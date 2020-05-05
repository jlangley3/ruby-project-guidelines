class CreateComicsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :comics do |t|
      t.string :name
      t.date 
    end
  end
end
