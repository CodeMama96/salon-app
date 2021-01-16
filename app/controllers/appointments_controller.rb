class AppointmentsController < ApplicationController
    before_action :set_appointment, only: [:show, :edit, :update, :destroy]

def index
  
end


def show

end


def new
    @appointment = Appointment.new

end

def edit
end

def create
  @appointment = Appointment.find_or_create_by(appointment_params)
  @appointment = current_user.appointments.build
 

end


def update
  
end

def destroy
  @appointment.destroy
end

end

private
  #Use callbacks to share common setup or constraints between actions.
def set_appointment
  @appointment = current_user.appointments.find_by(id: params[:id])
  if @appointment.nil? 
    flash[:error] = "Appointment not found."
    redirect_to appointments_path
  end
end

  
def appointment_params
    params.require(:appointment).permit(:time, :user_id, :service_id)
end
