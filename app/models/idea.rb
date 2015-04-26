class Idea < ActiveRecord::Base
	belongs_to :user
	belongs_to :platform
	has_many :roles
	validates :title, :idea_description, :skill_description,  presence: true

end
