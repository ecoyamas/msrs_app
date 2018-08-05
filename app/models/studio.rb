class Studio < ActiveRecord::Base
  belongs_to :store
  has_many :reservations
end
