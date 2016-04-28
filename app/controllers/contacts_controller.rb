class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(secure_params)
    respond_to do |format|
      if @contact.valid?
        EmailUsers.contact_email(@contact).deliver_now
        format.html { render :new, notice: 'Thank You for joining us!' }
        format.js {render :new}
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
        format.js {render json: @contact.errors, status: :unprocessable_entity}
      end
    end
  end

  private

  def secure_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
