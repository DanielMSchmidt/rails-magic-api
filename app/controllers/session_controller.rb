class SessionController < ApplicationController
  def create
    @session = Session.newInstance

    render json: { identifier: @session.identifier }
  end
end
