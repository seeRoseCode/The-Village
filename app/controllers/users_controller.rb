class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
    @users = User.all
    render json: @users
  end

  def profile
    render json: { user: current_user}, status: :accepted
  end


  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: @user, jwt: @token }, status: :created
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
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
  params.require(:user).permit(:name, :age, :birthday, :address, :img_url, :family_id, :adult, :parent, :lost, :married, :password, :username)
end

def this_user
  @user = User.find(params[:id])
end

end
