class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def index
  end

  def usage
  end

  private
    # --- before filter ---

    # confirm a logged-in user
    def logged_in_admin
      unless logged_in?
        flash[:danger] = "ログインしてください"
        redirect_to login_url
      end
    end
end
