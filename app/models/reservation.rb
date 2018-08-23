class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :store
  belongs_to :studio
  validates :user_id, presence: true
  default_scope -> { order(date: :asc) }
  validate :is_reservation
  validate :date_error_past
  validate :date_error_over_next_month

  # 予約があればエラーメッセージを返す。
  def is_reservation
    # if date = params[:date] && studio_id = params[:studio_id] and !(start_time > params[:end_time] or end_time < params[:start_time])
    #   errors.add(:is_reservation, "予約が存在します。")
    # end
  end

  def date_error_past
    if date.present? && date < Date.today
      errors.add(:past, "今日以降の日付を指定してください。")
    end
  end

  def date_error_over_next_month
    if date.present? && date > Date.today + 1.month
      errors.add(:over_next_month, "1ヶ月以内の日付を指定してください。")
    end
  end
end
