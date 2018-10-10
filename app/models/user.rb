class User < ActiveRecord::Base
  require 'net/http'
  require 'uri'
  require 'json'
  has_many :reservations
  has_many :stores
  validates :name, presence: true
  validates :address, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

before_save :prepare_save
  def prepare_save
         params = URI.encode(self.address)
         uri =URI.parse("https://maps.googleapis.com/maps/api/geocode/json?address=#{params}&key=AIzaSyDXauEV4TuXM075vYtemnRiN7Bd1j9cw6k")
         logger.debug("URL：#{uri}")
         json = Net::HTTP.get(uri)
         result = JSON.parse(json)
         logger.debug("JSON：#{result}")
         lat = result["results"][0]["geometry"]["location"]["lat"]
         lng = result["results"][0]["geometry"]["location"]["lng"]
         logger.debug("Lat：#{lat},Lng：#{lng}")
         self.lat = lat
         self.lng = lng
  end
end
