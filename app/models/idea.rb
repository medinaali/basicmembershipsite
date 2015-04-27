class Idea < ActiveRecord::Base
	belongs_to :user
	belongs_to :platform
	has_many :idears
	has_many :roles, through: :idears
	validates :title, :idea_description, :skill_description,  presence: true
	

	scope :ascending, -> {order(title: :asc)}
	scope :descending, -> {order(title: :desc)}
	
	scope :newest, -> {order(created_at: :desc)}
	scope :oldest, -> {order(created_at: :asc)}

end
