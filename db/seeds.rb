# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
User.destroy_all

claudia = User.create!(email: "claudia@me.com", password: "test12")

event = Event.create!(name: "Gittyhub", description:"Let's add some random text here to describe this awesome event Gittyhub! Gittyhub's first meeting for people who are learning to use Github and sometime have no idea what they are doing and just hope it all works out if they press a button.",  location:"Singel 542, 1B, 1234AB Amsterdam, the Netherlands", price: 0, capacity: 25, includes_food: false, includes_drinks: true, active: true, user: claudia)
