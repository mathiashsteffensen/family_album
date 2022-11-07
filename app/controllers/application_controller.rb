class ApplicationController < ActionController::Base
  include AuthConcern

  helper_method :logged_in?
end
