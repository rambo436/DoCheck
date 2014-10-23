class Experience < ActiveRecord::Base
  belongs_to :user
  has_many :events
  has_many :checklists, through: :events
  has_many :items, through: :checklists
end
