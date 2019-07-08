class UserSessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create

    if @user
      redirect_to root_path, notice: 'Login successful'
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: 'Logged out!'
  end
end
