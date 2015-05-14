class ReaddOccupationAndPhoneNumberToAttendees < ActiveRecord::Migration
  def change
    remove_column :attendees, :occupation, :string
    remove_column :attendees, :phone_number, :string
    add_column :attendees, :occupation, :string
    add_column :attendees, :phone_number, :string
  end
end
