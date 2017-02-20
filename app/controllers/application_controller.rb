class ApplicationController < ActionController::Base
  # before_action :restrictions
  protect_from_forgery with: :null_session

  # def restrictions
  #   authenticate_or_request_with_http_token do |api_key, options|
  #     User.find_by(email: request.headers['X-User-Email'] , api_key:api_key)
  #   end
  # end
end
