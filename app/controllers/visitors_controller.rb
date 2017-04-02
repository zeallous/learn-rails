class VisitorsController < ApplicationController

  def new
    Rails.logger.debug "\033[1;34;40m[DEBUG]\033[0m " + 'Initializing Visitor Object'
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(secure_params)
    if @visitor.valid?
      @visitor.subscribe
      flash[:notice] = "Signed up #{@visitor.email}."
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:visitor).permit(:email)
  end

end