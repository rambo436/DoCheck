class User < ActiveRecord::Base
  has_many :experiences
  has_many :events, through: :experiences
  has_many :checklists, through: :events
  has_many :items, through: :checklists # **Want User.first.items** 

end
