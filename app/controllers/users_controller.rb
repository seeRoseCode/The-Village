class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :addChild, :show]

  def index#WORKING
    @users = User.all
    render json: @users.map{|user| UserSerializer.new(user).serializable_hash}
  end

  def profile#NOT TESTED!
    render json: { user: UserSerializer.new(current_user)}, status: :accepted
  end

  def addChild#WORKING
    user_id = user_params[:old_user_id].to_s
    child = user_params[:new_child]
    @user = User.find_by(user_id)
    new_child = User.create({name: child[:new_child_name], age: child[:new_child_age], birthday: child[:new_child_birthday], adult: false, password: "password", username: child[:new_child_name]})
    FamilyMember.create({user_id: @user.id, related_user_id: new_child.id})
    Connection.create({user_id: @user.id, connected_user_id: new_child.id})
    render json: UserSerializer.new(new_child)
  end

  def show#WORKING
    this_user
    render json: UserSerializer.new(@user).serializable_hash
  end



  def create#WORKING
    @user = User.create(user_params)
    if @user.valid?
      @user.createCalendar
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end



  def update#WORKING
    this_user
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy#WORKING
    @user = User.find(params[:id])
    @user.destroy
  end

private

  def user_params#WORKING
    params.require(:user).permit!
  end

  def this_user#WORKING
    @user = User.find(params[:id])
    UserSerializer.new(@user)
  end

end
