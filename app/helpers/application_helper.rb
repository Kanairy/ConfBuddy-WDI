module ApplicationHelper

  # enable :sessions

      def current_user
        User.find_by(id: session[:user_id])
      end

      def logged_in?
      # !!current_user
      true
      end

  def formatted_date(date)
    date.strftime('%d %b %Y  //  %l:%M %P')
  end

end
