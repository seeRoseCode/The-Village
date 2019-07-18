class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end


  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: {user: @user}, status: :created
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end


  def show
    render json: this_user
  end


  def update
    this_user
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors.full_messages, status: :not_acceptable
    end
  end

  def delete
    this_user.destroy
  end

private

def user_params
  params.require(:user).permit(:name, :username, :age, :birthday, :address, :img_url, :family_id, :adult, :parent, :lost, :married, :password)
end

def this_user
  @user = User.find(params[:id])
end

end
