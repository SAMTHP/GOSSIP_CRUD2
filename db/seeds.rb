require 'faker'
i = 0

10.times do
	city = City.create!(city_name: "CITY#{i}")
	i += 1
end

10.times do
	users = User.create!(name: "NAME#{i}", email: "test#{i}@live.fr", password: "#{i}", city_id: rand(1..10))
	i += 1
end

20.times do
	gossip = Gossip.create!(title: "TITRE#{i}", user_id: rand(1..10))
	i += 1
end

10.times do 
	commentaries = Commentary.create!(content: "Commentaire #{i}", user_id: rand(1..10), gossip_id: rand(1..10))
	i += 1
end