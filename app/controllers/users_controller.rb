class UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end


  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    this_user
  end


  def update
    this_user
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def delete
    this_user.destroy
  end

private

def user_params
  params.require(:user).permit(:name, :age, :birthday, :address, :img_url, :family_id, :adult, :parent, :lost, :married)
end

def this_user
  @user = User.find(params[:id])
end

end
