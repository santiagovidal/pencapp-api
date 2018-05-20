class RenameTypeColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column :matches, :type, :phase
    rename_column :initial_predictions, :type, :code
  end
end
