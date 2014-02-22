class CreateWhiteElephants < ActiveRecord::Migration
  def change
    create_table :white_elephants do |t|
      t.string :name
      t.string :string
      t.string :countries_visited
      t.string :integer
      t.string :country
      t.string :string

      t.timestamps
    end
  end
end
