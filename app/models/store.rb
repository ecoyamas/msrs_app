class Store < ActiveRecord::Base
  has_many :studios
  belongs_to :user
end
