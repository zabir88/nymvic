class UsersController < ApplicationController
  
  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        EmailUsers.welcome_email(@user).deliver_later
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.js {render :index}
      else
        format.html { render :index }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        format.js {render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end

  private

  def user_params
      params.require(:user).permit(:first_name, :last_name, :birth_year, :gender, :marital_status, :children, :party_affliation, :email, :telephone)
    end
end
