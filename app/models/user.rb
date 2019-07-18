class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false}
  
  has_many :connections
  has_many :connected_users, through: :connections

  has_many :connectors, foreign_key: :connected_user_id, class_name: 'Connection'
  has_many :connector_users, through: :connectors, source: :user

  has_many :family_members
  has_many :related_users, through: :family_members
  has_many :familied_members, foreign_key: :related_user_id, class_name: 'Family_member'
  has_many :members, through: :familied_members, source: :user

  def children
    self.related_users.select{|user| user.adult == false}
  end

  def parents
    self.related_users.select{|user| user.parent == true}
  end

  def siblings
    self.related_users.reject{|user| user.parent == true || user.name == self.name}
  end

  def family
    array = self.related_users
    family = []
    array.each{|user| family.push(user)}
    family.push(self)
    family
  end

  def addChild(name, age, birthday)
    @newUser = User.create({name: name, age: age, birthday: birthday, adult: false})
    FamilyMember.create({user_id: self.id, related_user_id: @newUser.id})
    FamilyMember.create({user_id: @newUser.id, related_user_id: self.id})
  end

  # def my_villages  POSSIBLY UNNECESSARY
  #   self.connected_users.select{|user| user.adult == true}
  # end


  # def village_families
  #   village = []
  #   self.connections.each{|connect| village.push(connect.connected_user.family)}
  #   village
  #BUG - returning a family for each member rather than just 1 for all the members that belong to one family. work on later as their may be a way to simply render what I want on the front end
  # end


end
