class AttendancesController < ApplicationController

def index
  @attendances = Attendance.all

  render json: @attendances
end

def new
  @attendance = Attendance.new
end

def create
  @event = Event.find_by(code: params[:event])
  @user = User.find_by(name: params[:user])
  @attendance = Attendance.create!(event: @event, user: @user)
  render json: @attendance

end

def edit
  @attendance = Attendance.find(params[:id])
end

def update
  @attendance = Attendance.find(params[:id])
  @attendees = @attendance.users
  @attendance.update!(attendance_params)
  data = {
    attendance: @attendance,
    attendees: @attendees
  }
  puts data

  render json: data
end

def destroy
  @attendance = Attendance.find(params[:id])
  @attendance.destroy

  redirect_to attendances_path
end

# def decode
#   @attendance = Attendance.find_by(code: params[:id])
#
#   render json: @attendance
# end

# def checkin
#   @attendance = Attendance.create!(attendance_params)
#   render json: @attendance
# end
# strong params
private
def attendance_params
  params.require(:attendance).permit(:user_id, :event_id)
end

end
