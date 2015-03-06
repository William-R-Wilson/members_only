class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user.authenticate(params[:session][:password_digest])
      redirect_to @user
    else
      render "new"
    end
  end
    
end
