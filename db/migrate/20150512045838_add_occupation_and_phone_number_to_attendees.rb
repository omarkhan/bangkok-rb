class AddOccupationAndPhoneNumberToAttendees < ActiveRecord::Migration
  def change
    add_column :attendees, :occupation, :string
    add_column :attendees, :phone_number, :integer
  end
end
