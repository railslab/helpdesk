class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def self.proteger(options = {})
    with_options options do |this|
      this.http_basic_authenticate_with  name: "admin", password: "123"
    end
  end
end
