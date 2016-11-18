class Linkedin
  include HTTParty
  attr_reader
  def initialize
    url = "https://www.linkedin.com/oauth/v2/authorization?response_type=code&client_id=#{ENV['API_KEY']}&redirect_uri=http://localhost:8080&state=987654321&scope=r_basicprofile"

    response = HTTParty.get(url)

    @response = response
  end
end
