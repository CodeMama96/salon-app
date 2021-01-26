class AppointmentsController < ApplicationController
    before_action :redirect_if_not_signed_in
    before_action :set_appointment, only: [:show, :edit, :update, :destroy]

def index
  if params[:service_id] && @service = Service.find(params[:service_id]) 
    @appointments = @service.appointments.order_by_date 
  else
    @appointments = Appointment.all.order_by_date
  end
  #logic for service id, check if it's a nestd trout and if it is, find service and appointment associated to that service
end

def new
  if params[:service_id] && @service = Service.find(params[:service_id])
    @appointment = Appointment.new(service_id: params[:service_id])
    #@appointment = @service.appointments.build
  else
    @appointment = Appointment.new
  end
end

def show
  @appointment = Appointment.find(params[:id])
 
end

def create
  @appointment = Appointment.find_or_create_by(appointment_params)
  @appointment = current_user.appointments.create(appointment_params)
  if @appointment.save
      redirect_to appointment_path(@appointment)
    else
      render :new
  end

end

def destroy
  @appointment = Appointment.find(params[:id])
  @appointment.destroy
  redirect_to appointment_path
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
      :service_id,
      :stylist_id)
end
