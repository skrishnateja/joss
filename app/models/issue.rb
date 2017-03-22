class Issue < ActiveRecord::Base
	belongs_to :user
	belongs_to :paper

	has_many :comments
end
