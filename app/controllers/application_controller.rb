class ApplicationController < ActionController::Base
  before_action :set_globals
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_globals
    @companies = Company.all
    @categories = Category.all
    @contracts = Contract.all
  end
end
