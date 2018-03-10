class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice:'登録完了'　#本来はメールを送信したい
    else
      flash.now[:alert]="登録失敗"
      render :new
    end
  end

    private
    def user_params
      params.require(:user).permit(:nickname,:mail,:password,:password_conformation)
      #他の要素もストロングパラメータに入れる？
    end
    has_secure_password
end
