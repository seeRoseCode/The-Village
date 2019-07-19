class FamilyMembersController < ApplicationController


  def index
    @family_members = FamilyMember.all
    render json: @family_members
  end

  def create
    @family_member = FamilyMember.new(family_member_params)
    if @family_member.save
      render json: @family_member, status: :created
    else
      render json: @family_member.errors.full_messages, status: :unprocessable_entity
    end
  end


  def delete
    this_family_member.destroy
  end

  private

  def family_member_params
    params.require(:family_member).permit(:user_id, :related_user_id)
  end

  def this_family_member
    @family_member = FamilyMember.find(params[:id])
  end

end
