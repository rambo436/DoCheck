class Checklist < ActiveRecord::Base
  belongs_to :event
  has_many :items
end
