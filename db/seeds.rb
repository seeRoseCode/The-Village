require 'faker'
banner_images = {
  flowers: "https://im5.ezgif.com/tmp/ezgif-5-1948197ce7c2.jpg",
  power_ranger: "https://im5.ezgif.com/tmp/ezgif-5-3a80d393f470.jpg",
  space:"https://im5.ezgif.com/tmp/ezgif-5-f3e53d7fbb13.jpg",
  glitter:"https://im5.ezgif.com/tmp/ezgif-5-a444dd74033a.jpg",
  clouds:"https://im5.ezgif.com/tmp/ezgif-5-f7dfb7993e43.jpg",
  tires:"https://im4.ezgif.com/tmp/ezgif-4-987bec909e03.jpg",
  canyon1: "https://im4.ezgif.com/tmp/ezgif-4-18481b69992a.jpg",
  canyon2: "https://im5.ezgif.com/tmp/ezgif-5-45e5c98ae2ca.jpg",
  gallery: "https://im5.ezgif.com/tmp/ezgif-5-a066ca170a07.jpg",
  charlie: "https://im5.ezgif.com/tmp/ezgif-5-f8d8776174c4.jpg"
}

normal_profile_images = [
  "https://image.flaticon.com/icons/svg/145/145845.svg",
  "https://image.flaticon.com/icons/svg/145/145844.svg",
  "https://image.flaticon.com/icons/svg/145/145846.svg",
  "https://image.flaticon.com/icons/svg/145/145850.svg",
  "https://image.flaticon.com/icons/svg/145/145849.svg",
  "https://image.flaticon.com/icons/svg/145/145842.svg",
  "https://image.flaticon.com/icons/svg/145/145848.svg",
  "https://image.flaticon.com/icons/svg/145/145847.svg",
  "https://image.flaticon.com/icons/svg/145/145843.svg",
]

anime_profile_images = [
  "https://i.pinimg.com/564x/27/fc/5e/27fc5e7a1192f9107eebcd8cc8b10b69.jpg",
  "https://i.pinimg.com/564x/02/12/78/021278c35c67ce4b633e485573df41fe.jpg",
  "https://i.pinimg.com/564x/52/ae/26/52ae265581cdb4734040ddc6678f33d4.jpg",
  "https://i.pinimg.com/564x/a5/06/d9/a506d92d4f473e67f0d21d30bab3217a.jpg",
  "https://i.pinimg.com/564x/9a/7d/90/9a7d9073d63c3a493169e580b9051ea9.jpg",
  "https://i.pinimg.com/564x/bb/96/ad/bb96ad45ae24d69dfaf832b2db385f20.jpg",
  "https://i.pinimg.com/564x/03/2a/dd/032add60663878d35a0c34f221e8a6e9.jpg"

]

hobbit_profile_images = [
  "https://cdn1.thr.com/sites/default/files/imagecache/gallery_portrait_500X751/2012/09/Bilbo_a_p.jpg",
  "http://cdn.collider.com/wp-content/uploads/the-hobbit-gollum1.jpg",
  "https://www.superherodb.com/pictures2/portraits/11/050/10860.jpg",
  "https://www.indiewire.com/wp-content/uploads/2014/12/hobbit.jpg?w=761",
  "http://cdn.collider.com/wp-content/uploads/2012/11/hobbit-poster-nori.jpg"
]

FamilyMember.destroy_all
User.destroy_all
Connection.destroy_all

u1 = User.create({name: "Kesha Lake", username: "kesha", address: "123 Fake St. Atlanta, Ga 33333", img_url: "https://scontent.fatl1-1.fna.fbcdn.net/v/t1.0-9/28468783_10204535875434209_211348782221099008_n.jpg?_nc_cat=109&_nc_oc=AQknq3bDzeiU3xyh-hPxDEpIEnZ_dUdalE6OwuFS-ypzV_sA9l3aC6yaaTCPuaD2c9eYGLLOauKqhe_WxXt74PA4&_nc_ht=scontent.fatl1-1.fna&oh=191b004e40bdd9ff2d002d32f01d732d&oe=5DEB6F69", age: 31, birthday: 19870408, married: true, adult: true, parent: true, password: "password", banner_url: banner_images[:flowers]})
u2 = User.create({name: "Jamie Lake", username: "jamie", address: "123 Fake St. Atlanta, Ga 33333", img_url: "https://scontent.fatl1-1.fna.fbcdn.net/v/t1.0-9/46482_703696026196_1663998853_n.jpg?_nc_cat=102&_nc_oc=AQnuAoR-o4ZN11bTsIxNrZelxWMe-iZcBttCaWtXmgmGi7w9nbNqVy_ZbK40DT8pFF-itqATGhHJW6BiJVgVF2x7&_nc_ht=scontent.fatl1-1.fna&oh=0a3a06db877602baa01a86a39aeb7281&oe=5DEB9803", age: 33, birthday: 19861210, married: true, adult: true, parent: true, password: "password",
banner_url: banner_images[:power_ranger]})

u3 = User.create({name: "Kayleigh Lake", username: "kayleigh", address: "123 Fake St. Atlanta, Ga 33333", age: 12, birthday: 20070307, img_url: "https://scontent.fatl1-1.fna.fbcdn.net/v/t31.0-8/11046920_10200487806475015_735165035169925247_o.jpg?_nc_cat=111&_nc_oc=AQm5PrX0hvQGu5_PPaa8h3pLMuR-iwhFZHL_P--cLzjJbi0z4nNThtTyqGcNyNiOqvsZydE8DznovDIvgglfYFBm&_nc_ht=scontent.fatl1-1.fna&oh=392245c83abaa9be1b3e9112efaf8ab3&oe=5DE830F7", adult: false, password: "password", banner_url: banner_images[:glitter]})
u4 = User.create({name: "Phoenix Lake", username: "phoenix", address: "123 Fake St. Atlanta, Ga 33333", age: 2, birthday: 20161211, img_url: "https://scontent.fatl1-2.fna.fbcdn.net/v/t31.0-8/23270230_10105809621733545_7114347254858709623_o.jpg?_nc_cat=108&_nc_oc=AQnQw_lmETIRSh5FUUUaM1jntY--xWdfNiD7k0QmiaiZQSFtBH_5tp8vD9sK4ZVd9lbxLQ7ZCp2UsG8W3tuNaGOi&_nc_ht=scontent.fatl1-2.fna&oh=e38f9608927357b43a08c7763d1d5fe3&oe=5DE1068B", adult: false, password: "password", banner_url: banner_images[:tires]})

u5 = User.create({name: "Jonathan Grant", username: "jonathan", address: "456 Fake St. Atlanta, Ga 33333", img_url: "https://scontent.fatl1-1.fna.fbcdn.net/v/t1.0-0/p206x206/31530383_769171607609_1467931719108657152_n.jpg?_nc_cat=102&_nc_oc=AQlOyLjqvwKmdGUZkhPvxJfWToyS-EyUBySI1Mr9yv51LUNzW8AkDoogUEyJtmdtO-LG7Nq4n23aMXLSX3hXqLip&_nc_ht=scontent.fatl1-1.fna&oh=de9ad51abafee5e494b3e8073c33a76b&oe=5DDDC7D7", age: 36, birthday: 19830611, married: true, adult: true, parent: true, password: "password", banner_url: banner_images[:canyon1]})
u6 = User.create({name: "Sarah Grant", username: "sarah", address: "456 Fake St. Atlanta, Ga 33333", img_url: "https://scontent.fatl1-1.fna.fbcdn.net/v/t1.0-9/67327731_10214491247254784_6456976708078665728_n.jpg?_nc_cat=100&_nc_oc=AQkb70igsbnrjjeqNTy05AxvZAIf-edtASIgQwciJNHbSNR2vWLwUKKtP13Aqrg5nonP_EV7VBP_2b5mhtkzqXsw&_nc_ht=scontent.fatl1-1.fna&oh=c4271741184d4e252d73415cad11b111&oe=5DE3C21D", age: 35, birthday: 19840314, married: true, adult: true, parent: true, password: "password", banner_url: banner_images[:gallery]})

u7 = User.create({name: "Jael Grant", username: "jael", address: "456 Fake St. Atlanta, Ga 33333", age: 2, birthday: 20170814, img_url: "https://scontent.fatl1-2.fna.fbcdn.net/v/t1.0-9/54523945_803747896449_3290664287038603264_o.jpg?_nc_cat=106&_nc_oc=AQm8o2_UU44lSB2AMzX87N2LWYOiuEAUYZ01Exo4HFTq_yCtffx3tuwg1sKat2qAv1bu8S04GPXXFzg0VqXx9pfk&_nc_ht=scontent.fatl1-2.fna&oh=fd6123e007da42a878c44678c95a8ea2&oe=5D9FFC9B", adult: false, password: "password", banner_url: banner_images[:clouds]})

40.times do
  User.create({
    name: Faker::Movies::StarWars.unique.character,
    username: Faker::Internet.unique.username,
    address: Faker::Movies::StarWars.planet,
    age: rand(1...35),
    birthday: Faker::Date.birthday(min_age:1, max_age: 60),
    img_url: normal_profile_images.sample,
    adult: false,
    password: "password"
  })
end

5.times do
  User.create({
    name: Faker::Movies::Hobbit.unique.character,
    username: Faker::Internet.unique.username,
    address: Faker::Movies::Hobbit.location,
    age: rand(15...65),
    birthday: Faker::Date.birthday(min_age:1, max_age: 60),
    img_url: hobbit_profile_images.sample,
    adult: false,
    password: "password"
  })
end

10.times do
  User.create({
    name: Faker::JapaneseMedia::SwordArtOnline.unique.real_name,
    username: Faker::JapaneseMedia::SwordArtOnline.unique.game_name ,
    address: Faker::JapaneseMedia::SwordArtOnline.location,
    age: rand(18...25),
    birthday: Faker::Date.birthday(min_age:1, max_age: 60),
    img_url: anime_profile_images.sample,
    adult: false,
    password: "password"
  })
end

10.times do
  User.create({
    name: Faker::JapaneseMedia::SwordArtOnline.unique.game_name,
    username: Faker::JapaneseMedia::SwordArtOnline.unique.game_name ,
    address: Faker::JapaneseMedia::SwordArtOnline.location,
    age: rand(18...25),
    birthday: Faker::Date.birthday(min_age:1, max_age: 60),
    img_url: anime_profile_images.sample,
    adult: false,
    password: "password"
  })
end

FamilyMember.create({user_id: u1.id, related_user_id: u3.id})
FamilyMember.create({user_id: u1.id, related_user_id: u4.id})
FamilyMember.create({user_id: u1.id, related_user_id: u2.id})

FamilyMember.create({user_id: u2.id, related_user_id: u1.id})
FamilyMember.create({user_id: u2.id, related_user_id: u3.id})
FamilyMember.create({user_id: u2.id, related_user_id: u4.id})

# FamilyMember.create({user_id: u3.id, related_user_id: u1.id})
# FamilyMember.create({user_id: u3.id, related_user_id: u2.id})
# FamilyMember.create({user_id: u3.id, related_user_id: u4.id})
#
# FamilyMember.create({user_id: u4.id, related_user_id: u1.id})
# FamilyMember.create({user_id: u4.id, related_user_id: u2.id})
# FamilyMember.create({user_id: u4.id, related_user_id: u3.id})

FamilyMember.create({user_id: u5.id, related_user_id: u6.id})
FamilyMember.create({user_id: u5.id, related_user_id: u7.id})

FamilyMember.create({user_id: u6.id, related_user_id: u5.id})
FamilyMember.create({user_id: u6.id, related_user_id: u7.id})
#
# FamilyMember.create({user_id: u7.id, related_user_id: u5.id})
# FamilyMember.create({user_id: u7.id, related_user_id: u6.id})


Connection.create({user_id: u1.id, connected_user_id: u2.id})
Connection.create({user_id: u1.id, connected_user_id: u3.id})
Connection.create({user_id: u1.id, connected_user_id: u4.id})
Connection.create({user_id: u1.id, connected_user_id: u5.id})
Connection.create({user_id: u1.id, connected_user_id: u6.id})


Connection.create({user_id: u2.id, connected_user_id: u1.id})
Connection.create({user_id: u2.id, connected_user_id: u3.id})
Connection.create({user_id: u2.id, connected_user_id: u4.id})
Connection.create({user_id: u2.id, connected_user_id: u5.id})
Connection.create({user_id: u2.id, connected_user_id: u6.id})


Connection.create({user_id: u5.id, connected_user_id: u1.id})
Connection.create({user_id: u5.id, connected_user_id: u2.id})

Connection.create({user_id: u5.id, connected_user_id: u6.id})
Connection.create({user_id: u5.id, connected_user_id: u7.id})

Connection.create({user_id: u6.id, connected_user_id: u1.id})
Connection.create({user_id: u6.id, connected_user_id: u2.id})

Connection.create({user_id: u6.id, connected_user_id: u5.id})
Connection.create({user_id: u6.id, connected_user_id: u7.id})
