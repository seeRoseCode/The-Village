class User < ApplicationRecord
  belongs_to :family
  has_many :children, through: :family
  has_one :village, through: :family

  has_many :connections
  has_many :connected_users, through: :connections

  has_many :connectors, foreign_key: :connected_user_id, class_name: 'Connection'
  has_many :connector_users, through: :connectors, source: :user


  def children
    self.family.users.select{|user| user.adult == false}
  end

  # def addChild
  #   @user = User.new
  #   @user.adult = false
  #   Connection.new(thisuser, @user.id)
  #   redirect to user_create_path
  # end

  def parents
    self.family.users.select{|user| user.parent == true}
  end

end
