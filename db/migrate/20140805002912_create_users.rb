class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :email_address
      t.date :date_of_birth

      t.timestamps
    end
  end
end
