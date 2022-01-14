# frozen_string_literal: true

class DeviseCreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      ## Database authenticatable
      t.string :name,              null: false
      t.timestamps null: false
    end

    add_index :rooms, :email,                unique: true
    add_index :rooms, :reset_password_token, unique: true
    # add_index :rooms, :confirmation_token,   unique: true
    # add_index :rooms, :unlock_token,         unique: true
  end
end
