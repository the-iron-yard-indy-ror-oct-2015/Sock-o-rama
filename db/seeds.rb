# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
sock = Sock.create(
  [
    {name:"The Silk Sock", size:"small", material:"silk", color:"red", price:11.50, inventory:600, style:"ankle", img_url:"http://www.jasminesilk.com/prodzoomimg227.jpg"},
    {name:"The Polka Sock", size:"large", material:"cottom", color:"pattern", price:12.50, inventory:600, style:"ankle", img_url:"http://www.ethicalwares.com/media/catalog/product/s/o/socks-lilly.jpg"}

  ]
)
