class UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create, :addChild, :show]

  def index
    @users = User.all
    render json: @users.map{|user| UserSerializer.new(user).serializable_hash}
  end

  def profile
    render json: { user: UserSerializer.new(current_user)}, status: :accepted
  end

  def addChild
    user_id = user_params[:old_user_id].to_s
    child = user_params[:new_child]
    @user = User.find_by(user_id)
    new_child = User.create({name: child[:new_child_name], age: child[:new_child_age], birthday: child[:new_child_birthday], adult: false, password: "password", username: child[:new_child_name]})
    FamilyMember.create({user_id: @user.id, related_user_id: new_child.id})
    byebug
    Connection.create({user_id: @user.id, connected_user_id: new_child.id})
    render json: UserSerializer.new(new_child)
  end

  def show
    this_user
    
    render json: UserSerializer.new(@user).serializable_hash
  end



  def create
    @user = User.create(user_params)
    byebug
    if @user.valid?
      @user.createCalendar
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end



  def update
    this_user
    if @user.update(user_params)
      render json: UserSerializer.new(@user)
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def delete
    this_user.destroy
  end

private

def user_params
  params.require(:user).permit!
end

# def new_child_params
#   params.require(:user).permit(:id, :new_child_name, :new_child_age, :new_child_birthday)
# end

def this_user
  @user = User.find(params[:id])
  UserSerializer.new(@user)
end

end
