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
    {name:"The Polka Sock", size:"large", material:"cotton", color:"pattern", price:12.50, inventory:600, style:"ankle", img_url:"http://www.ethicalwares.com/media/catalog/product/s/o/socks-lilly.jpg"},
    {name:"Starburst Stripes", size:"medium", material:"cotton", color:"pattern", price:22.50, inventory:500, style:"high", img_url:"http://www.stnicholasstlaurence.dorset.sch.uk/wp-content/uploads/2014/03/Crazy-Socks.jpg"},
    {name:"Black & White Stripes", size:"small", material:"cotton", color:"pattern", price:20.50, inventory:600, style:"high", img_url:"http://www.underwearexpert.com/wp-content/uploads/2014/05/sa01-045_w.png"}
  ]
)
