class ApplicationController < ActionController::Base
  include Authentication
  include CommentsHelper

  protect_from_forgery with: :exception
end
