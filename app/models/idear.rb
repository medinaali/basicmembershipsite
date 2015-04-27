class Idear < ActiveRecord::Base
belongs_to :idea 
belongs_to :role
has_one :user
end
