class UsersController < ApplicationController
  def index
    # ユーザー一覧の表示コードを追加
    @users = User.all
  end

  def new
    @user = User.new
    # 新しいユーザーのフォーム表示コードを追加
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path, notice: 'ユーザーが作成されました'
    else
      render 'new'
    end
  end

  # ...

  private

  def user_params
    params.require(:uid).permit(:uid, :pass, :age)
  end

  def destroy
    @user = User.find(params[:uid])
    @user.destroy

    redirect_to users_path, notice: 'ユーザーが削除されました'
  end
end
