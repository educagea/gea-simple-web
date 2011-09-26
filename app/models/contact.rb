class Contact < ActiveRecord::Base
  
  validates_presence_of :email, :message => I18n.t("error.email.blank")
  validates_format_of :email, :with => Devise.email_regexp, :allow_blank => true, :message => I18n.t("error.email.invalid")
  
  after_create :send_contact_email
  
  def send_contact_email    
    ContactMailer.contact_mail(self).deliver
  end

end
