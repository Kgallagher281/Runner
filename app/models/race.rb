class Race < ApplicationRecord
	has_many :users
	has_one :distance
end
