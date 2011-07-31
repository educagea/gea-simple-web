class ContactsController < InheritedResources::Base
  layout "frontpage"
  
  respond_to :html
  actions :new, :create
  
  
end