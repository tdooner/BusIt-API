class AddUserIdToCheckIns < ActiveRecord::Migration
  def change
    change_table :check_ins do |t|
      t.integer :user_id, default: 0, null: false
    end
  end
end
