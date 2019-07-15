class User < ApplicationRecord
  belongs_to :family
  has_many :children, through: :family
  has_one :village, through: :family

  def children
    self.family.users.select{|user| user.adult == false}
  end

  def parents
    self.family.users.select{|user| user.parent == true}
  end

end
