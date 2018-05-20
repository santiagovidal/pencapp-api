class CreatePredictionValues < ActiveRecord::Migration[5.1]
  def change
    create_table :prediction_values do |t|
      t.string :value
      t.integer :earned_points
      t.references :match, foreign_key: true
      t.references :initial_prediction, foreign_key: true
      t.references :user, foreign_key: true
      t.references :penca, foreign_key: true
    end
  end
end
