class ApplicationController < ActionController::Base
  # Don't prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def home
    render text: 'Welcome to BusIt'
  end
end
