class VisitorsController < ApplicationController
  def index
    @attendee = Attendee.new
  end
end
