class PostPolicy < ApplicationPolicy
  def update?
    # Case 1 = User of record
    record.user_id = user.id || user.type == "AdminUser"

    # Case 2 = Admin User
  end
end