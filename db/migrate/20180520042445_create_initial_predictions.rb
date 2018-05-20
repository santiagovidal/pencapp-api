class CreateInitialPredictions < ActiveRecord::Migration[5.1]
  def change
    create_table :initial_predictions do |t|
      t.integer :type
      t.integer :points
      t.string :result
    end
  end
end
