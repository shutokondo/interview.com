class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to root_path, notice: '認証のためのメールを送信しました。メールを確認してください。'
      # TODO: 認証メールの送信
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
