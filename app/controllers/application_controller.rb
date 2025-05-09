class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def logged_in?
    if session[:user_id] then true else false end
  end

  def current_user
    if logged_in?
      session[:user_id]
    end
  end
end
