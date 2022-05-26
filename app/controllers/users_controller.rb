class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    #@user["first_name"] = params["user"]["first_name"]
    #@user["last_name"] = params["user"]["last_name"]
    @user["email"] = params["user"]["email"]
    @user["password"] = params["user"]["password"]
    @user.save
    redirect_to "/users/#{@user["id"]}"
  end
  
  def show
    @user = User.find_by({ "id" => params["id"] })
  end
end
