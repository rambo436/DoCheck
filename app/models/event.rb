class Event < ActiveRecord::Base
  belongs_to :experience
  has_many :checklists
  has_many :items, through: :checklists
end
