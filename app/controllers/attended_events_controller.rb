class AttendedEventsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    @attended_event = AttendedEvent.new(event_id: event.id, user_id: current_user.id)

    if AttendedEvent.where(user_id: current_user.id, event_id: params[:event_id]).exists?
      redirect_to event_path(event)
      return
    end

    redirect_to event_path(event) if @attended_event.save
  end
end
