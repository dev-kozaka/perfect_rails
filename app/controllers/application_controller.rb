class ApplicationController < ActionController::Base
  def login_failed
    render template: "shared/login_failed", status: 401
  end
end
