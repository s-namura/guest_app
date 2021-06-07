class Users::PasswordsController <
Devise::PasswordsController
  before_action :ensure_normal_user, only: :find_or_create_by

  def ensure_normal_user
    if params[:user][:email].downcase == "guest@example.com"
      redirect_to new_user_session_path, alert: "ゲストユーザーのパスワード再設定は出来ません。"
    end
    
  end
  
end