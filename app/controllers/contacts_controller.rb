class ContactsController < InheritedResources::Base
  respond_to :html
  actions :new, :create
  
  def new
    new! do |format|
      format.html { render :layout => "frontpage" }
    end    
  end
  
  
end