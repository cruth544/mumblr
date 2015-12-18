
# clean out all current data
Mumble.delete_all
User.delete_all

garfield = User.create(
  email:                 "bob.garfield@gmail.com",
  handle:                "garfield minus morality",
  profile_image_uri:     "https://goo.gl/RhIeZE",
  # password:              "123",
  # password_confirmation: "123"
)
harper = User.create(
  email:                 "harper.reilly@mac.com",
  handle:                "harper",
  # password:              "123",
  # password_confirmation: "123"
)
portland = User.create(
  email:                 "people-power@no-dams.org",
  handle:                "Concerned Portland Citizen",
  profile_image_uri:     "http://goo.gl/yDGFoy",
  # password:              "123",
  # password_confirmation: "123"
)
eugenius = User.create(
  email:                 "k.eugenio+nospam@eugenius.ca",
  handle:                "eugenius",
  profile_image_uri:     "https://goo.gl/jCXvfu",
  # password:              "123",
  # password_confirmation: "123"
)
beardo = User.create(
  email:                 "beardo@irony.com",
  handle:                "BE♥RDZ",
  profile_image_uri:     "http://goo.gl/ys48dJ",
  # password:              "123",
  # password_confirmation: "123"
)

g1 = garfield.mumbles.create(image_uri: "https://i.imgur.com/iCDtnPK.png")
g2 = garfield.mumbles.create(image_uri: "https://i.imgur.com/uHW0npr.png")
g3 = garfield.mumbles.create(image_uri: "https://i.imgur.com/30RHfnL.png")

h1 = harper.mumbles.create(
  image_uri: "http://www.lamag.com/wp-content/uploads/sites/9/2015/10/Ramen-Burrito.jpg",
  tags:      "#lunchtime #ramenburrito"
)
h2 = harper.mumbles.create(
  image_uri: "http://www.lamag.com/wp-content/uploads/sites/9/2015/10/Bho-Kho_LittleSisterDTLA_Credit-Dan-Collopy-850x638.jpg",
  tags:      "#bonemarrowpho #meencanta"
)
h3 = harper.mumbles.create(
  image_uri: "http://www.lamag.com/wp-content/uploads/sites/9/2015/07/tacocitytitlecovertacos.jpg",
  tags:      "#ilovela #diversity #tacothursday"
)

p1 = portland.mumbles.create(
  text: "To Whom it May Concern,

Complaining about the weather is a form
of climate change denial. If you want
more sun then just keep driving your
Volkswagens or move to LA. I'm just saying,
hypocrisy is a very unattractive trait.

Sincerely,
Concerned Portland Citizen
",
  tags: "#chemtrailsare4real"
)
p2 = portland.mumbles.create(
  text: "Dear Editorial Board of the Portland Mercury,

While I enjoy a good joke as much as the
next Portlander, your 'henhouse' reference
strikes me as enforcing patriarchy, not as
mocking it. Also, raising chickens for
their eggs is both animal cruelty and a
form of incarceration.

Sincerely,
Concerned Portland Citizen
",
  tags: "#raisingtheroost"
)

e1 = eugenius.mumbles.create(
  text:      "Clouds.",
  image_uri: "https://i.imgur.com/K3EjYy3.jpg",
  tags:      "#flight"
)
e2 = eugenius.mumbles.create(
  text:      "Thinking about time, and what it does to us…",
  image_uri: "https://i.imgur.com/ooNPTeR.jpg",
  tags:      "#usa #longdistancedrive"
)
e3 = eugenius.mumbles.create(
  text:      "Sometimes I miss being a kid!",
  image_uri: "https://i.imgur.com/gGucXiA.jpg",
  tags:      "#forever"
)
e4 = eugenius.mumbles.create(
  text:      "Just sitting around at home.",
  image_uri: "https://i.imgur.com/rjooqF4.jpg",
  tags:      "#grounded #texture"
)
e5 = eugenius.mumbles.create(
  text:      "Old friends and monuments…",
  image_uri: "https://i.imgur.com/PQCbWht.jpg",
  tags:      "#grounded #texture"
)

b1 = beardo.mumbles.create(
  image_uri: "https://ga-core-production-herokuapp-com.global.ssl.fastly.net/assets/controllers/education/immersives/web-development-immersive/micah-rich-cc41373133ba521256a0cb757cfd6578.jpg",
  tags:      "#nicebeard"
)
b2 = beardo.mumbles.create(
  image_uri: "https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/1679/andrew_madden.jpg",
  tags:      "#nicebeard"
)

h2.created_at = h2.created_at.advance days:  0, hours: -2
e2.created_at = e2.created_at.advance days:  0, hours: -4
e4.created_at = e4.created_at.advance days:  0, hours: -6
p1.created_at = p1.created_at.advance days:  0, hours: -8
e5.created_at = e5.created_at.advance days:  0, hours: -10
b2.created_at = b2.created_at.advance days:  0, hours: -12
e1.created_at = e1.created_at.advance days: -1, hours: 0
b1.created_at = b1.created_at.advance days: -1, hours: -2
h3.created_at = h3.created_at.advance days: -1, hours: -4
g3.created_at = g3.created_at.advance days: -1, hours: -6
g1.created_at = g1.created_at.advance days: -1, hours: -8
g2.created_at = g2.created_at.advance days: -1, hours: -10
h1.created_at = h1.created_at.advance days: -1, hours: -12
e3.created_at = e3.created_at.advance days: -2, hours: 0
p2.created_at = p2.created_at.advance days: -2, hours: -2
