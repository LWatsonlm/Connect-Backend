class UsersController < ApplicationController

def index
  @users = User.all

  render json: @users
end

def show
  @user = User.find(params[:id])

  render json: @user
end

def new
  @user = User.new
end

def create
  @user = User.create!(user_params)
  render json: @user

end

def id
  @user = User.find_by(linkedinId: params[:linkedinId])

  render json: @user
end

def key
  @key = ENV['API_KEY']

  render json: @key
end

private
def user_params
  params.require(:user).permit(:name, :photo_url, :linkedin_url, :lastName, :linkedinId )
end



end
