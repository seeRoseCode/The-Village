# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
v1 = Village.create
fam1 = Family.create({name: "The Lakes", img_url:"our img here", village_id: v1.id})
u1 = User.create({name: "Kesha", address: "123 Fake St. Atlanta, Ga 33333", img_url: "img here", age: 31, birthday: 19870408, married: true, family_id: fam1.id, adult: true, parent: true})
u2 = User.create({name: "Jamie", address: "123 Fake St. Atlanta, Ga 33333", img_url: "img here", age: 33, birthday: 19861210, married: true, family_id: fam1.id, adult: true, parent: true})

u3 = User.create({name: "Kayleigh", address: "123 Fake St. Atlanta, Ga 33333", age: 12, birthday: 20070307, img_url: "my img here", lost: false, family_id: fam1.id, adult: false})
u2 = User.create({name: "Phoenix", address: "123 Fake St. Atlanta, Ga 33333", age: 12, birthday: 20161211, img_url: "my img here", lost: false, family_id: fam1.id, adult: false})
