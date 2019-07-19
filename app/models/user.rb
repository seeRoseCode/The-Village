class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false}

  has_many :connections#I CREATED THIS CONNECTION
  has_many :connected_users, through: :connections#PEOPLE I CREATED A CONNECTION WITH

  has_many :connectors, foreign_key: :connected_user_id, class_name: 'Connection'#SOMEONE ELSE CREATED THIS CONNECTION TO ME
  has_many :connector_users, through: :connectors, source: :user#THE PEOPLE THAT CREATED CONNECTIONS WITH ME

  has_many :family_members#I CREATED THIS FAMILY MEMBER
  has_many :related_users, through: :family_members#THE FAMILY MEMBERS I CLAIM TO BE RELATED TO

  has_many :familied_members, foreign_key: :related_user_id, class_name: 'FamilyMember'#SOMEONE ELSE SAID THAT THEY'RE RELATED TO ME
  has_many :members, through: :familied_members, source: :user#THE PEOPLE THAT CLAIM I AM RELATED TO THEM

  has_one :calendar
  has_many :events
  # has_many :events, through: :reservations
################################################################################
  def children#WORKING
    if self.adult == true
      self.related_users.select{|user| user.adult == false}
    else
      return []
    end
  end

  def parents#wORKING
    if self.adult == false
      self.related_users.select{|user| user.parent == true}
    else
      return []
    end
  end

  def siblings#UNUSED
    self.related_users.reject{|user| user.parent == true || user.name == self.name}
  end

  def village#WORKING
    arr = []
    self.connected_users.each{|user| arr.push(user)}
    self.connector_users.each{|user| arr.push(user)}
    self.parents.each{|parent| parent.connected_users.each{|user| arr.push(user)}}
    self.siblings.each{|sib| arr.push(sib)}
    arr.each{ |user| user.children.each{|child| arr.push(child)} }
    new_arr = arr.select{|user| user.id != self.id}
    new_arr.uniq
  end


  def family#WORKING
    array = self.related_users
    family = []
    array.each{|user| family.push(user)}
    family.push(self)
    family
  end

  def createCalendar#UNTESTED!!!!
    Calendar.create({user_id: self.id})
    Event.create({user_id: self.id, calendar_id: self.calendar.id, name: "#{self.name}'s birthday!", event_date: self.birthday})
    byebug
  end


end
