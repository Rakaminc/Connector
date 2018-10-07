class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    if @user
      @user = User.new(params.require(:user).permit(:name, :email, :password_digest))
      @user.save

      flash[:notice] = "会員登録が成功しました！"

      redirect_to("/")
    else
      @error_message = "入力してください。"
    end
  end
  def login
    @user = User.find_by(params[:email], params[:password_digest])
    if @user
      session[:user_id] = @user.id

      flash[:notice] = "ログインしました"
      redirect_to("/")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]

      render("users/login")
    end
  end
  def logout
    session[user_id] = nil
  end
  def ensure_correct_user
    if @current_suer.id != params[:id].to_i
      flash[:notice] = "権限がありません"
      redirect_to("/")
    end
  end
end
