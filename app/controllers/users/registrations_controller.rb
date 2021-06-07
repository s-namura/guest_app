class Users::RegistrationsController <
Devise::RegistrationsController
  before_action :ensure_normal_user, only: %1[update destroy]

  def ensure_normal_user
    if resource.email == "guest@example.com"
      redirect_to root_path, alert: "ゲストユーザーの更新・削除できません。"
    end
  end
end