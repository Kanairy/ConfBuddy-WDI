module ApplicationHelper


  def formatted_date(date)
    date.strftime('%d %b %Y  //  %l:%M %P')
  end

  # enable :sessions

      def current_user
        User.find_by(id: session[:user_id])
      end

      def logged_in?
      !!current_user

      end

end
