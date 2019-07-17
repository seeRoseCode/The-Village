# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Family.destroy_all
User.destroy_all
Connection.destroy_all


fam1 = Family.create({name: "The Lakes", img_url:"our img here", village_id: v1.id})
u1 = User.create({name: "Kesha Lake", address: "123 Fake St. Atlanta, Ga 33333", img_url: "img here", age: 31, birthday: 19870408, married: true, family_id: fam1.id, adult: true, parent: true})
u2 = User.create({name: "Jamie Lake", address: "123 Fake St. Atlanta, Ga 33333", img_url: "img here", age: 33, birthday: 19861210, married: true, family_id: fam1.id, adult: true, parent: true})

u3 = User.create({name: "Kayleigh Lake", address: "123 Fake St. Atlanta, Ga 33333", age: 12, birthday: 20070307, img_url: "my img here", lost: false, family_id: fam1.id, adult: false})
u4 = User.create({name: "Phoenix Lake", address: "123 Fake St. Atlanta, Ga 33333", age: 2, birthday: 20161211, img_url: "my img here", lost: false, family_id: fam1.id, adult: false})

fam2 = Family.create({name: "The Grants", img_url:"our img here", village_id: v1.id})
u5 = User.create({name: "Jonathan Grant", address: "456 Fake St. Atlanta, Ga 33333", img_url: "img here", age: 36, birthday: 19830611, married: true, family_id: fam2.id, adult: true, parent: true})
u6 = User.create({name: "Sarah Grant", address: "456 Fake St. Atlanta, Ga 33333", img_url: "img here", age: 35, birthday: 19840314, married: true, family_id: fam2.id, adult: true, parent: true})

u7 = User.create({name: "Jael Grant", address: "456 Fake St. Atlanta, Ga 33333", age: 2, birthday: 20170814, img_url: "my img here", lost: false, family_id: fam2.id, adult: false})

Connection.create({user_id: u1.id, connected_user_id: u2.id})
Connection.create({user_id: u1.id, connected_user_id: u3.id})
Connection.create({user_id: u1.id, connected_user_id: u4.id})
Connection.create({user_id: u1.id, connected_user_id: u5.id})
Connection.create({user_id: u1.id, connected_user_id: u6.id})
Connection.create({user_id: u1.id, connected_user_id: u7.id})


Connection.create({user_id: u2.id, connected_user_id: u1.id})
Connection.create({user_id: u2.id, connected_user_id: u3.id})
Connection.create({user_id: u2.id, connected_user_id: u4.id})
Connection.create({user_id: u2.id, connected_user_id: u5.id})
Connection.create({user_id: u2.id, connected_user_id: u6.id})
Connection.create({user_id: u2.id, connected_user_id: u7.id})


Connection.create({user_id: u5.id, connected_user_id: u1.id})
Connection.create({user_id: u5.id, connected_user_id: u2.id})
Connection.create({user_id: u5.id, connected_user_id: u3.id})
Connection.create({user_id: u5.id, connected_user_id: u4.id})
Connection.create({user_id: u5.id, connected_user_id: u6.id})
Connection.create({user_id: u5.id, connected_user_id: u7.id})

Connection.create({user_id: u6.id, connected_user_id: u1.id})
Connection.create({user_id: u6.id, connected_user_id: u2.id})
Connection.create({user_id: u6.id, connected_user_id: u3.id})
Connection.create({user_id: u6.id, connected_user_id: u4.id})
Connection.create({user_id: u6.id, connected_user_id: u5.id})
Connection.create({user_id: u6.id, connected_user_id: u7.id})
