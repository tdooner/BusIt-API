# The registration_id is the Google Cloud Messaging ID for that user
class AddRegistrationIdToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :registration_id
    end
  end
end
