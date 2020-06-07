class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.float :ppg
      t.float :rpg
      t.float :apg
      t.text :description

      t.timestamps
    end
  end
end
