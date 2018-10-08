class Store < ActiveRecord::Base
  has_many :studios
  belongs_to :user
  has_many :reservations
  validates :store_name, presence: true
  validates :address, presence: true
end
