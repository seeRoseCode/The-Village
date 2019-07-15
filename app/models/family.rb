class Family < ApplicationRecord
  has_many :users
  belongs_to :village

  def children
    self.users.select{|user| user.adult == false}
  end

  def parents
    self.users.select{|user| user.parent == true}
  end

end
