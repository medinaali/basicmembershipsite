class Role < ActiveRecord::Base
	has_many :idears
	has_many :ideas, through: :idears

	validates :name, presence: true
end
