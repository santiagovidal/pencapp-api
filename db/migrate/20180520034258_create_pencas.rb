class CreatePencas < ActiveRecord::Migration[5.1]
  def change
    create_table :pencas do |t|
      t.references :owner, references: :users
      t.string :name
    end
  end
end
