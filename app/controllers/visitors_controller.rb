class VisitorsController < ApplicationController
  def index
    @attendee = Attendee.new
    @info = Info.first
    @images = Dir.glob('app/vendor/assets/images/samples/logos/platinum/*.png')
  end

end
