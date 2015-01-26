class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    begin
      @contact = Contact.new(params[:contact_form])
      @contact.request = request
      if @contact.deliver
        flash.now[:notice] = "Thanks!! We'll be in touch!"
      else
        render :new
      end
    rescue ScriptError
      flash[:error] = "Sorry, this message appears to be spam and wasn't delivered."
    end
  end
end
