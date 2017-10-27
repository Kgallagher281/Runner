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
		description: '5K'
	},
	{
		id: 2,
		description: '10K'
	},
	{
		id: 3,
		description: 'Half Marathon'
	},
	{
		id: 4,
		description: 'Marathon'
	}
])

User.create([
	{
		id: 1,
		first_name: "Christy",
		last_name: "Kusuma",
		username: "ckusuma",
		password: "1",
		distance_id: 1,
		photo: open('http://static.wixstatic.com/media/3cc615_323631ae328f4ea2b8a4d8837f08107d.jpg_256')
	},
	{
		id: 2,
		first_name: "Kevin",
		last_name: "Gallagher",
		username: "kgallagher",
		password: "2",
		distance_id: 2,
		photo: open('http://static.wixstatic.com/media/3cc615_323631ae328f4ea2b8a4d8837f08107d.jpg_256')
	},
	{
		id: 3,
		first_name: "Cam",
		last_name: "Crews",
		username: "ccrews",
		password: "3",
		distance_id: 3,
		photo: open('http://static.wixstatic.com/media/3cc615_323631ae328f4ea2b8a4d8837f08107d.jpg_256')
	}
])

Race.create([
	{
		id: 1,
		name: "New York 5K Race",
		date: '2009-06-15T13:45:30',
		details: "Race details 1",
		address: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
		distance: '5K'
	},
	{
		id: 2,
		name: "New York 10K Race",
		date: '2009-06-15T13:45:30',
		details: "Race details 2",
		address: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
		distance: '10K'
	},
	{
		id: 3,
		name: "Rock 'n Roll Half Marathon",
		date: '2009-06-15T13:45:30',
		details: "Race details 3",
		address: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
		distance: 'Half Marathon'
	}
])

Post.create([
	{
		id: 1,
		title: "Christy's post 1",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin justo ante, convallis ut auctor eget, molestie et elit. Nam ex sapien, faucibus nec feugiat ut, convallis eu nulla. Maecenas semper eget purus faucibus semper. Donec scelerisque venenatis neque fermentum suscipit. Aenean nisi sem, finibus ut semper vel, fermentum cursus ipsum. Donec mauris diam, dictum sed ornare sed, bibendum malesuada massa. Sed quis elit ipsum.",
		user_id: 1
	},
	{
		id: 2,
		title: "Kevin's post 1",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed eros vitae nibh facilisis malesuada. Sed lorem dolor, malesuada ornare nibh at, ultricies faucibus eros. Praesent felis odio, finibus ac ipsum in, maximus pulvinar dolor. Nunc a elit in lorem pulvinar elementum. Phasellus interdum non lectus nec ultricies. Nulla finibus arcu sit amet neque rhoncus faucibus. Nulla tincidunt viverra tortor, in dictum tellus. Vestibulum pulvinar elementum facilisis. In auctor mollis lacus vitae gravida. Maecenas sit amet tortor purus. Maecenas pulvinar porttitor mattis.",
		user_id: 2
	},
	{
		id: 3,
		title: "Christy's post 2",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed eros vitae nibh facilisis malesuada. Sed lorem dolor, malesuada ornare nibh at, ultricies faucibus eros. Praesent felis odio, finibus ac ipsum in, maximus pulvinar dolor. Nunc a elit in lorem pulvinar elementum. Phasellus interdum non lectus nec ultricies. Nulla finibus arcu sit amet neque rhoncus faucibus. Nulla tincidunt viverra tortor, in dictum tellus. Vestibulum pulvinar elementum facilisis. In auctor mollis lacus vitae gravida. Maecenas sit amet tortor purus. Maecenas pulvinar porttitor mattis.",
		user_id: 1
	},
	{
		id: 4,
		title: "Kevin's post 2",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed eros vitae nibh facilisis malesuada. Sed lorem dolor, malesuada ornare nibh at, ultricies faucibus eros. Praesent felis odio, finibus ac ipsum in, maximus pulvinar dolor. Nunc a elit in lorem pulvinar elementum. Phasellus interdum non lectus nec ultricies. Nulla finibus arcu sit amet neque rhoncus faucibus. Nulla tincidunt viverra tortor, in dictum tellus. Vestibulum pulvinar elementum facilisis. In auctor mollis lacus vitae gravida. Maecenas sit amet tortor purus. Maecenas pulvinar porttitor mattis.",
		user_id: 2
	},
	{
		id: 5,
		title: "Kevin's post 3",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed eros vitae nibh facilisis malesuada. Sed lorem dolor, malesuada ornare nibh at, ultricies faucibus eros. Praesent felis odio, finibus ac ipsum in, maximus pulvinar dolor. Nunc a elit in lorem pulvinar elementum. Phasellus interdum non lectus nec ultricies. Nulla finibus arcu sit amet neque rhoncus faucibus. Nulla tincidunt viverra tortor, in dictum tellus. Vestibulum pulvinar elementum facilisis. In auctor mollis lacus vitae gravida. Maecenas sit amet tortor purus. Maecenas pulvinar porttitor mattis.",
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



