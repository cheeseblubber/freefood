class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :longitude, null: false
      t.string :latitude, null: false
      t.string :address
      t.timestamps
    end
  end
end
