class User < ActiveRecord::Base
  has_many :experiences
  has_many :events, through: :experiences
  has_many :checklists, through: :events
  has_many :items, through: :checklists # **Want User.first.items**

  validates_presence_of :first_name, :last_name, :email, :password, :phone
  validates_uniqueness_of  :email, :phone
  validate :first_name, :last_name, length: { minimum: 3}
end
