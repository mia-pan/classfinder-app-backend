class AppointmentsController < ApplicationController

    def index 
        appointments = Appointment.all
        render :json => appointments
    end 

    def show 
        appointment = Appointment.find_by(title: params[:id])
        render :json => appointment
    end 

    def create 
        appointment = Appointment.create(appointment_params)
        render :json => appointment
    end 

    def update 
        appointment = Appointment.find(params[:id])
        appointment.update(appointment_params)
        render :json => appointment
    end 

    def destroy
        appointment = Appointment.find(params[:id])
        appointment.destroy
        render :json => {status: 'deleted'}
    end 

    private 
    def appointment_params
        params.require(:appointment).permit(:name, :time, :duration, :location, :instructor, :status, :category_id)
    end 

end
