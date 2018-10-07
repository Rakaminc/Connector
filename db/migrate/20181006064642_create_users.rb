class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.datatime :created_at
      t.datatime :updated_at

      t.timestamps
    end
  end
end
