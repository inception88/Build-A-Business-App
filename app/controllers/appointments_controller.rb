class AppointmentsController < ApplicationController
    def create
        @appointment = Appointment.find_or_create_by(user_id: current_user.id, store_id: params[:id], datetime: params[:appointment][:datetime].to_datetime)
        redirect_to appointment_path(@appointment)
    end

end
