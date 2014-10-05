class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  
  def current_user
    if token = request.headers["HTTP_AUTH_TOKEN"]
      return @_current_user if @_current_user
      @_current_user = User.where(token: token).first!
    else
      super
    end
  end

  def api_request?
    request.headers["HTTP_AUTH_TOKEN"].present?
  end
end
