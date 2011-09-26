class ContactMailer < ActionMailer::Base
  
  def contact_mail(contact)
    @contact = contact
    mail(:to => "contacto@mundogea.com", :subject => "Contacto: " + @contact.subject, :from => @contact.email)
  end
  
end
