class AddFinalScoreToScores < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :final_score, :float
  end
end
