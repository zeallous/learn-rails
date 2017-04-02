class VisitorsController < ApplicationController

  def new
    Rails.logger.debug "\033[1;34;40m[DEBUG]\033[0m " + 'initializing visitors object'
    @owner = Owner.new
  end

end