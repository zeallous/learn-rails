class ContactsController < ApplicationController

Rails.logger.debug "\033[1;34;40m[DEBUG]\033[0m " + 'Entered Contacts_Controller'

  def new
    @contact = Contact.new
    Rails.logger.debug "\033[1;34;40m[DEBUG]\033[0m " + 'Initialize New Contact Object'
  end

  def create
    Rails.logger.debug "\033[1;34;40m[DEBUG]\033[0m " + 'Create New Contact Object'
    @contact = Contact.new(secure_params)
    if @contact.valid?
      # TODO send message
      flash[:notice] = "Message sent from #{@contact.name}."
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:contact).permit(:name, :email, :content)
  end

end