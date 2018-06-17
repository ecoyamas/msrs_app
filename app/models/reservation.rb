class Reservation < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  default_scope -> { order(date: :asc) }

  FRAME = [
    ["10:00~11:00",0],
    ["11:00~12:00",1],
    ["12:00~13:00",2],
    ["13:00~14:00",3],
    ["14:00~15:00",4],
    ["15:00~16:00",5],
    ["16:00~17:00",6],
    ["17:00~18:00",7],
    ["18:00~19:00",8],
    ["19:00~20:00",9],
    ["20:00~21:00",10],
    ["21:00~22:00",11],
  ]

  def frame_list
    return FRAME
  end

  def frame_time
    result = FRAME[frame.to_i][0]
    return result
  end

  PLACE = [
    ["渋谷店",0],
    ["代々木店",1],
    ["新宿店",2],
    ["高田馬場店",3],
    ["池袋店",4],
    ["大塚店",5]
  ]

  def place_list
    return PLACE
  end

  def place_name
    result = PLACE[place.to_i][0]
    return result
  end
end
