class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(secure_params)
    respond_to do |format|
      if @contact.valid?
        ContactEmail.contact_email(@contact).deliver_now
        flash[:notice] = "Thanks for reaching out. We will contact you shortly."
        format.html {redirect_to '/#nymvic'}
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def secure_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
