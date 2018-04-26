class Alert < ApplicationRecord
	validates :alert_type, presence: true
	validates :emergency_type, presence: true
	validates :affected_areas, presence: true
	validates :alert_message, presence: true
	validates :user, presence: true
	validates :status, presence: true
end

