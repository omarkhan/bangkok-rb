class VisitorsController < ApplicationController
  def index
    @attendee = Attendee.new
    @info = Info.first
  end

end
