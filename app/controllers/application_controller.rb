class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def services
    @services ||= Services.new
  end
end
