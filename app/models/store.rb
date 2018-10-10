class Store < ActiveRecord::Base
  require 'net/http'
  require 'uri'
  require 'json'
  has_many :studios
  belongs_to :user
  has_many :reservations
  validates :store_name, presence: true
  validates :address, presence: true

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
