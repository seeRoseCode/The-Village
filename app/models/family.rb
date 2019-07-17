class Family < ApplicationRecord
  # has_many :users
  # belongs_to :village
  belongs_to :user
  belongs_to :related_user, class_name: 'User'
  # def children
  #   self.users.select{|user| user.adult == false}
  # end
  #
  # def parents
  #   self.users.select{|user| user.parent == true}
  # end

end
