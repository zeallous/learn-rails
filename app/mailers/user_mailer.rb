class UserMailer < ApplicationMailer
    default from: "anson.zeall@gmail.com"
  
    def contact_email(contact)
      @contact = contact
      Rails.logger.debug "\033[1;34;40m[DEBUG]\033[0m " + 'in UserMail contact_email'
      #Rails.logger.debug "\033[1;34;40m[DEBUG]\033[0m " + 'Secret mail: ' + Rails.application.secrets.owner_email.to_str
      mail(to: 'anson@coinpip.com' , from: @contact.email, :subject => "Website Contact")
    end
    
    # Rails.application.secrets.owner_email
end
