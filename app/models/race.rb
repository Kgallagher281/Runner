class Race < ApplicationRecord
	has_many :users, through: :user_races
end
