# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Distance.create([
	{
		id: 1,
		name: 5,
	},
	{
		id: 2,
		name: 10,
	},
	{
		id: 3,
		name: 21,
	},
	{
		id: 4,
		name: 42,
	}
])

User.create([
	{
		id: 1,
		first_name: "Christy",
		last_name: "Kusuma",
		username: "ckusuma",
		password: "1",
		distance_id: 1
	},
	{
		id: 2,
		first_name: "Kevin",
		last_name: "Gallagher",
		username: "kgallagher",
		password: "2",
		distance_id: 2
	}
])

Race.create([
	{
		id: 1,
		name: "Race 1",
		details: "Race details 1",
		address: "Race address 1",
		distance: 5
	},
	{
		id: 2,
		name: "Race 2",
		details: "Race details 2",
		address: "Race address 2",
		distance: 10
	},
	{
		id: 3,
		name: "Race 3",
		details: "Race details 3",
		address: "Race address 3",
		distance: 21
	}
])

Post.create([
	{
		id: 1,
		title: "Post title 1",
		body: "Post body 1",
		user_id: 1
	},
	{
		id: 2,
		title: "Post title 2",
		body: "Post body 2",
		user_id: 2
	}
])

Friendship.create([
	{
		id: 1,
		user_id: 1,
		friend_id: 2
	},
	{
		id: 2,
		user_id: 2,
		friend_id: 1
	}
])

UserRace.create([
	{
		id: 1,
		user_id: 1,
		race_id: 1
	},
	{
		id: 2,
		user_id: 2,
		race_id: 2
	},
])



