# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
Subject.destroy_all
User.destroy_all

claudia = User.create!(email: "claudia@me.com", password: "test12")

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

event = Event.create!(name: "Gittyhub", description:"Let's add some random text here to describe this awesome event Gittyhub! Gittyhub's first meeting for people who are learning to use Github and sometime have no idea what they are doing and just hope it all works out if they press a button.",  location:"Singel 542, 1B, 1234AB Amsterdam, the Netherlands", price: 0, capacity: 25, includes_food: false, includes_drinks: true, starts_at: 1.day.from_now, ends_at: 2.days.from_now, active: true, subjects:[ruby, ruby_on_rails, back_end],  user: claudia)
