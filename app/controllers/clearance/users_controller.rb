class Clearance::UsersController < ApplicationController
  skip_before_filter :authorize, :only => [:create, :new]
  before_filter :avoid_sign_in, :only => [:create, :new], :if => :signed_in?

  def new
    @user = user_from_params
    render :template => 'users/new'
  end

  def create
    @user = user_from_params

    if @user.save
      sign_in @user
      redirect_back_or url_after_create
    else
      render :template => 'users/new'
    end
  end

  private

  def avoid_sign_in
    redirect_to Clearance.configuration.redirect_url
  end

  def url_after_create
    Clearance.configuration.redirect_url
  end


  def user_from_params
    user_params = params[:user] || Hash.new
    email = user_params.delete(:email)
    password = user_params.delete(:password)
    name = user_params.delete(:name)
    customer_id = user_params.delete(:customer_id)
    phone_number = user_params.delete(:phone_number)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.email = email
      user.password = password
      user.name = name
      user.customer_id = customer_id
      user.phone_number = phone_number
    end
  end

  def permit_params
    params.require(:user).permit(:email, :password, :name, :customer_id, :phone_number)
  end

end