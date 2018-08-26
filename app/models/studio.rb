class Studio < ActiveRecord::Base
  belongs_to :store
  has_many :reservations
  validates :studio_name, presence: true
end
