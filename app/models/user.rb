class User < ApplicationRecord
	has_one :distance 
	has_many :user_races
	has_many :races, through: :user_races
	has_many :posts
	has_many :friendships
	has_many :friends, through: :friendships
end
