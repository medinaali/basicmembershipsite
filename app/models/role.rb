class Role < ActiveRecord::Base
	has_many :users, through: :ideas
	validates :name, presence: true
end
