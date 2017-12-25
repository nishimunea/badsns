class UsersController < ApplicationController
  def create
    stat = User.create params.permit(:login_id, :name, :pass, :icon_file_name)
    render json: {errors: stat.errors.full_messages}, status: :bad_request and return if stat.errors.any?

    user = User.find_by 'login_id = ?', params[:login_id]
    icon_file_path = "#{Rails.root}/public/icons/#{user[:icon_file_name]}"
    user.update icon_file_name: default_icon_path unless File.file? icon_file_path

    token = log_in user
    render json: {name: user.name, icon: icon_user_path(user), token: token} and return
  end

  def icon
    begin
      user = User.find params[:id]
      send_data File.read "#{Rails.root}/public/icons/#{user[:icon_file_name]}", disposition: 'inline'
    rescue
      send_data File.read Dir["#{Rails.root}/public/icons/presets/*"][0], disposition: 'inline'
    end
  end

  private

  def default_icon_path
    default_icon_name = File.basename Dir["#{Rails.root}/public/icons/presets/*"].sample
    'presets/' << default_icon_name
  end
end