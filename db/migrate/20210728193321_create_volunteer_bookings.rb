class CreateVolunteerBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :volunteer_bookings do |t|
      t.string :b_time
      t.string :b_date

      t.timestamps
    end
  end
end
