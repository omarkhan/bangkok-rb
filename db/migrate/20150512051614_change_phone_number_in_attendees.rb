class ChangePhoneNumberInAttendees < ActiveRecord::Migration
  def change
    change_column :attendees, :phone_number, :string
  end
end
