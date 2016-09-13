# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Deal.delete_all
Sponser.delete_all
Player.delete_all
Team.delete_all

t1 = Team.create( { name: "Hull Women's Füsbol Team", location: "Denver" } )
t2 = Team.create( { name: "Crufts All Dog Women's Füsbol Team", location: "Mars" } )

p1 = Player.create( { name: "Bob", team_id: t1.id } )
p2 = Player.create( { name: "Jeff", team_id: t1.id } )
p3 = Player.create( { name: "Steve", team_id: t2.id } )
p4 = Player.create( { name: "Dave", team_id: t2.id } )

s1 = Sponser.create( { name: "Buxton Water" } )
s2 = Sponser.create( { name: "Chairs" } )
s3 = Sponser.create( { name: "Paper" } )

d1 = Deal.create( { player_id: p1.id, sponser_id: s1.id, amount: 3 } )
d2 = Deal.create( { player_id: p1.id, sponser_id: s2.id, amount: 3 } )
d3 = Deal.create( { player_id: p2.id, sponser_id: s1.id, amount: 3 } )
d4 = Deal.create( { player_id: p2.id, sponser_id: s2.id, amount: 3 } )
d5 = Deal.create( { player_id: p3.id, sponser_id: s3.id, amount: 3 } )
d6 = Deal.create( { player_id: p2.id, sponser_id: s3.id, amount: 3 } )