class Attendance < ApplicationRecord
	after_create :confirmation_attendance

	belongs_to :user
	belongs_to :event

	def confirmation_attendance
		UserMailer.confirmation_email(self).deliver_now
	end
end
