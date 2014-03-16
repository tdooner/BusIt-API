class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :access_token, length: 255

      t.timestamps
    end
  end
end
