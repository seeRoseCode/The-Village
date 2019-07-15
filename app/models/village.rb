class Village < ApplicationRecord
  has_many :families
  has_many :users, through: :families

  def children
    self.users.select{|user| user.adult == false}
  end

  def parents
    self.users.select{|user| user.parent == true}
  end

end
