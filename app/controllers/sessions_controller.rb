# frozen_string_literal: true

class SessionsController < ApplicationController
  allow_unauthenticated_access only: %i[new create]
  rate_limit to: 10, within: 3.minutes, only: :create, with: lambda {
    redirect_to new_session_url, alert: 'Prueba de nuevo más tarde'
  }

  def new; end

  def create
    if (user = User.authenticate_by(params.permit(:email_address, :password)))
      start_new_session_for user
      redirect_to root_path
    else
      redirect_to new_session_path, alert: 'Probá con otro email o contraseña.'
    end
  end

  def destroy
    terminate_session
    redirect_to recipes_path
  end
end
