class Distance < ApplicationRecord
	has_many :users
	has_many :races
end
