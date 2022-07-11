class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.email.downcase!
    puts user_params
  if @user.save
    flash[:notice] = "Account created successfully!"
    session[:user_id] = @user.id.to_s
    redirect_to root_path
  else
    flash.now.alert = "Your account could not be created, please try again."
    render :new
  end

end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end



end 
