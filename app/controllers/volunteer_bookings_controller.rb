class VolunteerBookingsController < ApplicationController
	def new
		@b_time = params[:b_time]
		@b_date = params[:b_date]
		@volunteer_booking = VolunteerBooking.new
	end

	def create
		@vol_booking = VolunteerBooking.new
		@vol_booking.f_name = params["volunteer_booking"]["f_name"]
		@vol_booking.l_name = params["volunteer_booking"]["l_name"]
		@vol_booking.phone_number = params["volunteer_booking"]["phone_number"]
		@vol_booking.email = params["volunteer_booking"]["email"]
		@vol_booking.b_date = params["volunteer_booking"]["b_date"]
		@vol_booking.b_time = params["volunteer_booking"]["b_time"]
		@vol_booking.save
		redirect_to root_path
	end

end
