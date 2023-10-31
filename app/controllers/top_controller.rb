class TopController < ApplicationController
  def main
    # トップページの表示処理を追加
    render 'login_form'
  end

  def login
    # ログイン画面の表示処理を追加
    user_id = 1

    # ユーザーIDをセッションに保持
    session[:uid] = user_id

    # ログイン後のリダイレクト先を設定（適宜変更）
    redirect_to root_path, notice: 'ログインしました'
  end

  def logout
    # ログアウト処理を追加
    # セッションの破棄などを行うことが一般的
    session[:uid] = nil  # メールアドレスをセッションから削除

    # ログアウト後のリダイレクト先を設定（適宜変更）
    redirect_to root_path, notice: 'ログアウトしました'
  end
end