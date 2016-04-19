class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def self.authenticated!(options = {})
    before_action :authenticate_user!, options
  end
end
