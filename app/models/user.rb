class User < ApplicationRecord
	has_one :distance 
	has_many :user_races
	has_many :races, through: :user_races
	has_many :posts
	has_many :friendships
	has_many :friends, through: :friendships
def friends_posts
      Post.where(user_id: [Friendship.where(user_id: id).map{|f| f.friend_id}])
  end
end
