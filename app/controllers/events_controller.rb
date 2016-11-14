class EventsController < ApplicationController

def index
  @events = Event.all

  render json: @events
end

def show
  @event = Event.find(params[:id])
  @attendees = @event.users
  data = {
    event: @event,
    attendees: @attendees
  }

  render json: data  # AM: I wonder if you could've used `include:` to pass attendee information in your JSON response for an event
                     # AM: I only bring this up because I recall there being an issue processing data on the front-end because you were sending back this custom `data` object
end

def new
  @event = Event.new
end

def create
  @event = Event.create!(event_params)
  render json: @event

end

def edit
  @event = Event.find(params[:id])
end

def update
  @event = Event.find(params[:id])
  @attendees = @event.users
  @event.update!(event_params)
  data = {
    event: @event,
    attendees: @attendees
  }
  puts data

  render json: data   # AM: See my note above about using Rails `include:`
end

def destroy
  @event = Event.find(params[:id])
  @event.destroy

  redirect_to events_path   # AM: Since your Rails API is serving up views, do you need to redirect?
                            # AM: Is there anything helpful you could send back instead in a JSON response (e.g., confirmation of deletion)?
end

def decode
  @event = Event.find_by(code: params[:id])

  render json: @event
end   # AM: Do you end up using this? How do you trigger it?

# strong params
private
def event_params
  params.require(:event).permit(:title, :code, :location, :time, :cost, :date)
end

end
