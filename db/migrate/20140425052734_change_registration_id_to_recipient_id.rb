class ChangeRegistrationIdToRecipientId < ActiveRecord::Migration
  def change
    rename_column :users, :registration_id, :recipient_id
  end
end
