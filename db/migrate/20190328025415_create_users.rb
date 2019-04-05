class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :bank_id
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :phone
      #we added store id

      t.timestamps
    end
  end
end
