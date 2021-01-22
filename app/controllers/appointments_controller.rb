class AppointmentsController < ApplicationController
    before_action :set_appointment, only: [:show, :edit, :update, :destroy]

def index
  @appointments = Appointment.all
  #logic for service id, check if it's a nestd trout and if it is, find service and appointment associated to that service
end

def new
  @appointment = Appointment.new
end

def show
  @appointment = Appointment.find(params[:id])
  # if blank?
  #   set_appointment
  # end
end

def create
  @appointment = Appointment.find_or_create_by(appointment_params)
  @appointment = current_user.appointments.create(appointment_params)
  if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
  end

  # @appointment = current_user.appointments.create(appointment_params)
  # @appointment.save
  # redirect_to appointment_path(@appointment)
end

def destroy
  @appointment = Appointment.find(params[:id])
  @appointment.destroy
  redirect_to new_appointment_path
  # <!-- <%= appointment.time.strftime("%I:%M %p") %> -->
end

end

private

  def set_appointment
    @appointment = current_user.appointments.find_by(id: params[:id])
      if @appointment.nil? 
        flash[:error] = "Appointment not found."
        redirect_to appointments_path
      end
end

  
def appointment_params
    params.require(:appointment).permit(
      :time,
      :date, 
      :service_id)
end
