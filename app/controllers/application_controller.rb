class ApplicationController < ActionController::Base
  protect_from_forgery

  REALM = "a12CV4jsf2sArJs6Y"
  before_filter :authenticate

  private

  def authenticate
    name, pw = ENV["BASIC_AUTH_NAME"], ENV["BASIC_AUTH_PW"]
    return if name.nil? || pw.nil?
    users = { name => pw }
    authenticate_or_request_with_http_digest(REALM) do |username|
      users[username]
    end
  end
end
