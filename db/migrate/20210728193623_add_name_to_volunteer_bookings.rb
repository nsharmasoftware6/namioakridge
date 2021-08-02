class AddNameToVolunteerBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :volunteer_bookings, :f_name, :string
    add_column :volunteer_bookings, :l_name, :string
    add_column :volunteer_bookings, :phone_number, :string
    add_column :volunteer_bookings, :email, :string
  end
end
