class CreateComicsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :comics do |t|
      t.string :name
      t.datetime :publish_date
      t.integer :series_id
    end
  end
end
