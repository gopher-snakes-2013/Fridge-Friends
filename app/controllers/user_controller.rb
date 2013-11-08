class UsersController < Clearance::UsersController

#   def create
#     p "in front of at user"*30
#     @user = User.new(user_from_params)

#     if @user.save
#       sign_in @user
#       redirect_back_or url_after_create
#     else
#       render :template => 'users/new'
#     end
#   end


#   def user_from_params
#     p "!!!" * 50
#     p params
#     params.require(:user).permit(:email, :password, :name, :customer_id, :phone_number)
#   end
# private

  # def user_from_params
  #   user_params = params[:user] || Hash.new
  #   email = user_params.delete(:email)
  #   password = user_params.delete(:password)
  #   name = user_params.delete(:name)
  #   customer_id = user_params.delete(:customer_id)
  #   phone_number = user_params.delete(:phone_number)

  #   Clearance.configuration.user_model.new(user_params).tap do |user|
  #     user.email = email
  #     user.password = password
  #     user.name = name
  #     user.customer_id = customer_id
  #     user.phone_number = phone_number
  #   end
  # end

  # def user_from_params
  #   p "in user_from_params!!!"
  #   user_params = user_from_params || Hash.new
  #   email = user_params.delete(:email)
  #   password = user_params.delete(:password)
  #   name = user_params.delete(:name)
  #   phone_number = user_params.delete(:phone_number)
  #   customer_id = user_params.delete(:customer_id)

  #   Clearance.configuration.user_model.new(user_params).tap do |user|
  #     user.email = email
  #     user.password = password
  #     user.name = name
  #     user.phone_number = phone_number
  #     user.customer_id = customer_id
  #   end
  # end

  # def user_from_params
  #   params.require(:user).permit(:name, :email, :password, :phone_number, :customer_id)
  # end
end