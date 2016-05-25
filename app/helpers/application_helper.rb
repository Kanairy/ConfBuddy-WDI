module ApplicationHelper
  def formatted_date(date)
    date.strftime('%d %b %Y  //  %l:%M %P')
  end
end
