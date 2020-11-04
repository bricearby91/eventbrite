class Event < ApplicationRecord
	validate :divides_by_5#, :start_date_cannot_be_past

	validates :start_date,
		presence: true
		
	validates :duration,
		presence: true
	validates :title,
		presence: true,
		length: { in: 12..1000 }
	validates :description,
		presence: true,
		length: { in: 20..1000 }
	validates :location,
		presence: true
	validates :price,
		presence: true,
		inclusion: 1..1000
		
	belongs_to :user
	has_many :attendances
	has_many :users, through: :attendances

	private

	def divides_by_5
		if duration <= 0
			errors.add(:duration, "has to be greater than zero")
		elsif duration % 5 != 0
			errors.add(:duration, "has to be a mulltiple of 5")
		end
	end

	def start_date_cannot_be_past
		if start_date <= Time.now
			errors.add(:start_date, "has to be in the future")
		end
	end

end
