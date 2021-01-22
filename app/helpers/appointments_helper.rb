module AppointmentsHelper
    def current_user
        @current_user ||= User.find(session[:user_id]) 
    end

    def display_header
        if @service
            content_tag(:h1, "#{@service.name} Service")
        else
            content_tag(:h1, "All Appointments" )
        end
    end

    def appointment_by_service
        #<%= link_to "Appointments By Service", service_appointments_path(appointment.service_id)%>
    end
end
