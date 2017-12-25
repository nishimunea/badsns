class SessionsController < ApplicationController
  before_action :authenticate_user!, only: [:clear]

  def create
    begin
      user = User.find_by "login_id='#{params[:login_id]}' and pass='#{ Digest::SHA256.hexdigest params[:pass] }'"
      token = log_in user
      render json: {name: user.name, icon: icon_user_path(user), token: token} and return
    rescue
      render json: {errors: ['ログインに失敗しました']}, status: :bad_request and return
    end
  end

  def clear
    log_out
    render json: {} and return
  end
end