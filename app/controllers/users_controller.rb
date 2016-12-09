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

# def key
#   @key = ENV['API_KEY']
#
#   render json: @key
# end

def get_user
  @url = "https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=#{ENV['API_KEY']}&redirect_uri=
https://connect-f6bd3.firebaseapp.com/&state=987654321&scope=r_basicprofile"

  render json: {url: @url}
end

def get_code
  @code = params[:code]
  # using the cod eand the api key to make the request
  @postUrl = "https://www.linkedin.com/oauth/v2/accessToken?grant_type=authorization_code&code=#{@code}&redirect_uri=
https://connect-f6bd3.firebaseapp.com/&client_id=#{ENV['API_KEY']}&client_secret=#{ENV['client_secret']}"
  # send user data back as json
  response = HTTParty.post(@postUrl)
  token = response["access_token"]
  @person = HTTParty.get("https://api.linkedin.com/v1/people/~:(id,firstName,lastName,emailAddress,summary,picture-urls::(original),public-profile-url,headline)?oauth2_access_token="+ token + "&format=json")
  render json: @person
  # render json: {postUrl: @postUrl}
end

private
def user_params
  params.require(:user).permit(:name, :photo_url, :linkedin_url, :lastName, :linkedinId )
end



end
