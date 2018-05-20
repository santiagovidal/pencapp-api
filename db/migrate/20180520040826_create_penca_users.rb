class CreatePencaUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :penca_users do |t|
      t.references :user
      t.references :penca
    end
  end
end
