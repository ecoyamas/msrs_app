class Reservation < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  default_scope -> { order(date: :asc) }

  FRAME = [
    ["10:00~11:00",1],
    ["11:00~12:00",2],
    ["12:00~13:00",3],
    ["13:00~14:00",4],
    ["14:00~15:00",5],
    ["15:00~16:00",6],
    ["16:00~17:00",7],
    ["17:00~18:00",8],
    ["18:00~19:00",9],
    ["19:00~20:00",10],
    ["20:00~21:00",11],
    ["21:00~22:00",12],
  ]

  def frame_list
    return FRAME
  end

  def frame_time
    result = FRAME[frame.to_i][0]
    return result
  end

end
