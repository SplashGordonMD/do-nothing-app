class GolfClub < ApplicationRecord
	validates :id, presence: true
	validates :variety, presence: true
	validates :brand, presence: true
	validates :number, presence: true
end
