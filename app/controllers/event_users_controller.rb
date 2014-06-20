class EventUsersController < ApplicationController
  before_action :authenticate_user!
  
  # POST /eventusers
  def create
    @event = Event.find(params.require(:event_id))
    
    unless @event.volunteers.include?(current_user)
        @event.volunteers.push(current_user)
    end
    
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: "Successfully volunteered!"}
      else
        format.html { redirect_to @event, notice: "Failed to volunteer." }
      end
    end
  end

end
