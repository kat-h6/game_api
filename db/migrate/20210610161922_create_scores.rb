class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.datetime :timestamp
      t.integer :game_score
      t.time :time_spent
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
