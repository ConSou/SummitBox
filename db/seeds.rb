# 7 Summits
everest = Mountian.create(
  name: "Mount Everest",
  description: "Mount Everest, known in Nepali as Sagarmatha and in Tibetan as Chomolungma, is Earth's highest mountain above sea level, located in the Mahalangur Himal sub-range of the Himalayas.",
  lat: 27.988281,
  lng: 86.924986,
  elevation: 29029,
  image: 'everest.jpg'
)
Bin.create(
  name: everest.name,
  mountian: everest
)

denali = Mountian.create(
  name: "Denali",
  description: "Denali is the highest mountain peak in North America, with a summit elevation of 20,310 feet above sea level.",
  lat: 63.069370,
  lng: -151.006829,
  elevation: 20310,
  image: 'denali.jpg'
)
Bin.create(
  name: denali.name,
  mountian: denali
)

massif = Mountian.create(
  name: "Vinson Massif",
  description: "Vinson Massif is a large mountain massif in Antarctica that is 21 km long and 13 km wide and lies within the Sentinel Range of the Ellsworth Mountains.",
  lat: -78.633819,
  lng: -85.213575,
  elevation: 16050,
  image: 'vinson.jpg'
)
Bin.create(
  name: massif.name,
  mountian: massif
)

aconcagua = Mountian.create(
  name: "Aconcagua",
  description: "Aconcagua, with a summit elevation of 6,960.8 metres, is the highest mountain in both the Southern and Western Hemispheres.",
  lat: -32.652672,
  lng: -70.010610,
  elevation: 22841,
  image: 'aconcagua.jpg'
)
Bin.create(
  name: aconcagua.name,
  mountian: aconcagua
)

kilimanjaro = Mountian.create(
  name: "Mount Kilimanjaro",
  description: "Mount Kilimanjaro or just Kilimanjaro, with its three volcanic cones, Kibo, Mawenzi, and Shira, is a dormant volcano in Tanzania. It is the highest mountain in Africa, about 4,900 metres from its base, and 5,895 metres above sea level.",
  lat: -3.066825,
  lng: 37.355799,
  elevation: 19341,
  image: 'kilimanjaro.jpg'
)
Bin.create(
  name: kilimanjaro.name,
  mountian: kilimanjaro
)

elbrus = Mountian.create(
  name: "Mount Elbrus",
  description: "Mount Elbrus is the highest mountain in Europe, and the tenth most prominent peak in the world. A dormant volcano, Elbrus is in the Caucasus Mountains in Southern Russia, near the border with Georgia.",
  lat: 43.350436,
  lng: 42.445588,
  elevation: 18510,
  image: 'elbrus.jpg'
)
Bin.create(
  name: elbrus.name,
  mountian: elbrus
)

carstensz = Mountian.create(
  name: "Carstensz Pyramid",
  description: "Puncak Jaya or Carstensz Pyramid is the highest summit of Mount Jayawijaya or Mount Carstensz in the Sudirman Range of the western central highlands of Papua Province, Indonesia. Other summits are East Carstensz Peak, Sumantri and Ngga Pulu.",
  lat: -4.083956,
  lng: 137.186875,
  elevation: 16024,
  image: 'carstensz.jpg'
)
Bin.create(
  name: carstensz.name,
  mountian: carstensz
)

# Notable
k2 = Mountian.create(
  name: "K2",
  description: "K2, also known as Mount Godwin-Austen or Chhogori, at 8,611 metres above sea level, is the second highest mountain in the world, after Mount Everest at 8,848 metres",
  lat: 35.880473,
  lng: 76.515358,
  elevation: 28251,
  image: 'k2.jpg'
)
Bin.create(
  name: k2.name,
  mountian: k2
)

blanc = Mountian.create(
  name: "Mont Blanc",
  description: "Mont Blanc, meaning White Mountain, is the highest mountain in the Alps and the highest in Europe west of Russia's Caucasus peaks. It rises 4,808.7 m above sea level and is ranked 11th in the world in topographic prominence",
  lat: 45.833070,
  lng: 6.865390,
  elevation: 15781,
  image: 'blanc.jpg'
)
Bin.create(
  name: blanc.name,
  mountian: blanc
)

matterhorn = Mountian.create(
  name: "Matterhorn",
  description: "The Matterhorn is a mountain of the Alps, straddling the main watershed and border between Switzerland and Italy",
  lat: 45.980105,
  lng: 7.658175,
  elevation: 14692,
  image: 'matterhorn.jpg'
)
Bin.create(
  name: matterhorn.name,
  mountian: matterhorn
)

#Location Mountian Test
conor = Mountian.create(
  name: "Mount Conor",
  description: "The mountain that is me.  With an astounding 6 feet and 1 inch of elevation",
  lat: 45.595188,
  lng: -111.043156,
  elevation: 6,
  image: 'conor.jpg'
)
conor_bin = Bin.create(
  name: conor.name,
  mountian: conor
)
mountians = Mountian.all
bin = Bin.all

# Test Users
this_user = User.create(
  first_name: "Cool",
  last_name: "User",
  email: "the.coolest.test.user@gmail.com",
  password: "Password",
  password_confirmation: "Password",
  bio: "I'm a pretty cool test user.  Maybe even the coolest depending on who you ask.",
  city: "Boise",
  state: "Idaho",
  country: "USA"
)

that_user = User.create(
  first_name: "That",
  last_name: "User",
  email: "another.cool.test.user@gmail.com",
  password: "Password",
  password_confirmation: "Password",
  bio: "I'm just a test user... Just another one.",
  city: "Bolder",
  state: "Colorado",
  country: "USA"
)
users = User.all

# Entrys
30.times do

Entry.create(
  name: "Test Name",
  city: "Test City",
  state: "Test State",
  country: "Test Country",
  journal: "Being up here was the coolest thing ever WOW!",
  bin: bin.sample,
  user: users.sample
)
end

Entry.create(
  name: "#{this_user.first_name} #{this_user.last_name}",
  city: "Bozeman",
  state: "Montana",
  country: "USA",
  journal: "Beautiful!",
  bin: conor_bin,
  user: users.sample
)

# Plan Seeds
Plan.create(
  user: this_user,
  mountian: mountians.sample
)

Plan.create(
  user: this_user,
  mountian: mountians.sample
)

Plan.create(
  user: that_user,
  mountian: mountians.sample
)

puts "#{Mountian.count} mountians created!"
puts "#{Bin.count} bins created!"
puts "#{Entry.count} entrys created!"
puts "#{Plan.count} plans created!"
puts "Test User Created"
