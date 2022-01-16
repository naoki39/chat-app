class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :name,              null: false
      t.timestamps null: false
    end
  end
end
