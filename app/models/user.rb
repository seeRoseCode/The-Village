class User < ApplicationRecord
  has_many :children, through: :family
  has_one :village, through: :family

  has_many :connections
  has_many :connected_users, through: :connections

  has_many :connectors, foreign_key: :connected_user_id, class_name: 'Connection'
  has_many :connector_users, through: :connectors, source: :user

  has_many :families
  has_many :related_users, through: :families
  has_many :family_members, foreign_key: :related_user_id, class_name: 'Family'
  has_many :members, through: :family_members, source: :user
  #
  # def children
  #   self.family.users.select{|user| user.adult == false}
  # end
  #
  #
  # def parents
  #   self.family.users.select{|user| user.parent == true}
  # end

end
