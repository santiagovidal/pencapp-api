class AddDescriptionToInitialPrediction < ActiveRecord::Migration[5.1]
  def change
    add_column :initial_predictions, :description, :string
  end
end
