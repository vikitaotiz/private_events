class EventsController < ApplicationController
  def index
    @events = Event.all
    @past_events = Event.all
    @upcoming_events = Event.all

    # @previous_events = Event.previous
    # @upcoming_events = Event.upcoming
  end
end
