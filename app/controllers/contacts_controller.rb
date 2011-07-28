class ContactsController < InheritedResources::Base
  respond_to :html
  actions :new, :create
  
  def new
    @contact = Contact.new
    render :layout => "frontpage"
  end
  
end