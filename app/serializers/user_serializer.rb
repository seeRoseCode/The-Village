class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :address, :img_url, :age, :birthday, :married, :parent, :status, :adult, :village, :family, :children, :parents, :banner_url


  def village
    arr = []
    self.object.village.each{|member| arr.push({id: member.id, name: member.name, age:member.age, img: member.img_url, status:member.status})}
    arr
    # if self.object.connected_users == []
    #   arr = []
    #   arr1 = self.object.connector_users.map{|user| arr.push({id: user.id, name: user.name, img: user.img_url, status:user.status})}
    #   arr2 = self.object.connector_users.map{|user| user.children.map{|child| arr.push({id: child.id, name: child.name, img: child.img_url, status:child.status})}}
    #   final_arr = arr.select{|member| member[:id] != self.object.id}.uniq
    #   final_arr.uniq
    # else
    #   arr = []
    #   arr1 = self.object.connected_users.map{|user| arr.push({id: user.id, name: user.name, img: user.img_url, status:user.status})}
    #   arr2 = self.object.connected_users.map{|user| user.children.map{|child| arr.push({id: child.id, name: child.name, img: child.img_url, status:child.status})}}
    #   final_arr = arr.select{|member| member[:id] != self.object.id}.uniq
    #   final_arr.uniq
    # end
  end

  def family
    fam_arr = self.object.family.select{|user| user != self.object}
    final_fam_arr = fam_arr.map{ |user| {id: user.id,  name: user.name, age: user.age, img: user.img_url, status: user.status, child: !user.adult} }
    result = {num_of_members: self.object.family.length, members: final_fam_arr}
  end

  def children
    if self.object.children
      self.object.children.map{|user| {id: user.id, name: user.name, img:user.img_url, status: user.status}}
    end
  end

  def parents
    if self.object.parents
      self.object.parents.map{|user| {id: user.id, name: user.name}}
    end
  end

  # def events
  #   self.object.events.map{|event| {name: event.name, date: event.date, attendees: }}
  # end

end
