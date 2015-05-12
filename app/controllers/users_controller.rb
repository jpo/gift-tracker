##
# Overrides for Clearance::UsersController
#
class UsersController < Clearance::UsersController

  private

  ##
  # Overrides the default user_from_params method and provides support for a
  # name attribute.
  #
  def user_from_params
    email = user_params.delete(:email)
    password = user_params.delete(:password)
    name = user_params.delete(:name)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.email = email
      user.password = password
      user.name = name
    end
  end
end
