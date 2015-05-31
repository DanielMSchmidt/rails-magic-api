class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :session_id
      t.string :name
      t.integer :lifepoint
      t.integer :commander_damage

      t.timestamps null: false
    end
  end
end
