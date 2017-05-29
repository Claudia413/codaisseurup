# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Subject.destroy_all
User.destroy_all
Photo.destroy_all
Event.destroy_all
Registration.destroy_all

claudia = User.create!(email: "claudia@me.com", password: "test12")
miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")
wouter = User.create(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create(email: "matt@codaisseurbnb.com", password: "abcd1234")

ruby = Subject.create(name: "Ruby")
ruby_on_rails = Subject.create(name: "Ruby on Rails")
html = Subject.create(name: "HTML")
css = Subject.create(name: "CSS")
bootstrap = Subject.create(name: "Bootstrap")
jquery = Subject.create(name: "Jquery")
javascript = Subject.create(name: "Javascript")
front_end = Subject.create(name: "Front-end development")
back_end = Subject.create(name: "Back-end development")
syntax = Subject.create(name: "Syntax")
gaming = Subject.create(name: "Games")
photoshop = Subject.create(name: "Photoshop")

# Photos
photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496055789/Dragon_Age_Inquisition_wallpaper_ilyywl.jpg")
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496055789/dragonage-inquisition_vknooi.jpg")
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496055792/dragonagedragon_vq1lmp.jpg")

photo4 = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496055798/mario-party_ki8qdy.jpg")
photo5 = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496055791/party-planner_ruib3j.png")
photo6 = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496055789/Toad_y_Toadette_vdvqpc.jpg")
photo7 = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496055789/640_bptgdk.jpg")

photo8 = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496055816/7heaven_landscape_wallpaper_by_ivany86-d6t8496_h7mu4b.png")
photo9 = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496055824/magic_kingdom_by_ivany86-d6biz63_phwjjg.png")
photo10 = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496055792/floating_islands_by_elenadudina-dawl3lk_svzkel.jpg")

event1 = Event.create!(name: "Dragon Age meetup", description:"Let's add some random text here to describe this awesome event Dragon Age meetup! THis event is the first meeting for people who are learning to play Dragon Age Inquisition and sometimes have no idea what they are doing and just hope it all works out if they press a button. Pretty much like coding. Jk...",  location:"Singel 542, 1B, 1234AB Amsterdam, the Netherlands", price: 0, capacity: 25, includes_food: false, includes_drinks: true, starts_at: 1.day.from_now, ends_at: 2.days.from_now, active: true, subjects:[gaming, ruby_on_rails, back_end],  user: claudia, photos: [photo1, photo2, photo3])

event2 = Event.create!(name: "Mario meetup", description:"Zoof",  location:"Singel 542, 1B, 1234AB Amsterdam, the Netherlands", price: 0, capacity: 25, includes_food: false, includes_drinks: true, starts_at: 1.day.from_now, ends_at: 2.days.from_now, active: true, subjects:[gaming],  user: matt, photos: [photo4, photo5, photo6, photo7])

event3 = Event.create!(name: "Artsy meetup", description:"Photoshop class meetup to learn to make pretty stuff with Photoshop.",  location:"Singel 542, 1B, 1234AB Amsterdam, the Netherlands", price: 0, capacity: 25, includes_food: false, includes_drinks: true, starts_at: 1.day.from_now, ends_at: 2.days.from_now, active: true, subjects:[photoshop, ruby_on_rails, back_end],  user: wouter, photos: [photo8, photo9, photo10])

Registration.create(event: event1, user: claudia, price: 50, total: 100, status: true)
Registration.create(event: event2, user: matt, price: 50, total: 200, status: true)
