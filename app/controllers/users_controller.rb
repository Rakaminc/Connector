class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new

    if @user.save
      @user = User.new(params.require(:users).permit(:name, :email, :password_digest))

      flash[:notice] = "会員登録が成功しました！"

      render("users/create")
      redirect_to SendMailer

    else
      @error_message = "入力してください。"
      flash[:notice] = "登録に失敗しました。　お手数ですが最初からやり直して下さい。"
    end
  end

  # def login
  #   @user = User.find_by(params[:email], params[:password_digest])
  #   if @user
  #     session[:user_id] = @user.id
  #
  #     flash[:notice] = "ログインしました"
  #     redirect_to(top)
  #   else
  #     @error_message = "メールアドレスまたはパスワードが間違っています"
  #     @email = params[:email]
  #     @password = params[:password]
  #
  #     render("users/login")
  #   end
  # end
  #
  # def logout
  #   session[user_id] = nil
  # end
  # def ensure_correct_user
  #   if @current_suer.id != params[:id].to_i
  #     flash[:notice] = "権限がありません"
  #     redirect_to(top)
  #   end
  # end

  def update
    current_user.update(update_params)
    SendMailer.send_when_update(current_user).deliver
  end
end
