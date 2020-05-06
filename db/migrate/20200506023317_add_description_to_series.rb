class AddDescriptionToSeries < ActiveRecord::Migration[5.0]
  def change
    add_column :series, :description, :string
  end
end
