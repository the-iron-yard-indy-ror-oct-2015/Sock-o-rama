# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
sock = Sock.create(
  [
    {name:"The Silk Sock", size:"small", material:"silk", color:"red", price:11.50, inventory:6, style:"ankle", img_url:"http://www.jasminesilk.com/prodzoomimg227.jpg"}
  ]
)
