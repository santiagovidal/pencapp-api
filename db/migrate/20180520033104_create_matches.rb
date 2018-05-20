class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.string :result
      t.datetime :date
      t.string :location
      t.integer :type
      t.string :country1
      t.string :country2
      t.references :group
    end
  end
end
