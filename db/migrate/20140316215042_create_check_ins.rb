class CreateCheckIns < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.integer :bus_id
      t.datetime :created_at
      # todo: add user_id
    end
  end
end
