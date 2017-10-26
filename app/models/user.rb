class User < ApplicationRecord
	has_one :distance 
	has_many :user_races
	has_many :races, through: :user_races
	has_many :posts
	has_many :friendships
	has_many :friends, through: :friendships

	#This is the written logic to make sure we capture the friends posts.
	def friends_posts
		Post.where(user_id: [Friendship.where(user_id: id).map{|f| f.friend_id}])
	end

	def full_name
		first_name + ' ' + last_name
	end

  	# Search bar
	def self.search(search)
	  if search
	    User.where('first_name LIKE ? OR last_name LIKE ?', "%#{search}%", "%#{search}%") 
	  else
	    User.find(:all)
	  end
	end

	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end