module ApplicationHelper
  def bootstrap_class_for(flash_type)
    case flash_type
      when "success"
        "success"
      when "danger"
        "danger"
      when "warning"
        "warning"
      when "info"
        "info"
      # TODO: noticeからinfoに変更
      when "notice"
        "info"
      else
        flash_type.to_s
    end
  end
end
