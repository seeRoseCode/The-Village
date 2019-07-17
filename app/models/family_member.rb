class FamilyMember < ApplicationRecord
  belongs_to :user
  belongs_to :related_user, class_name: 'User'


end
