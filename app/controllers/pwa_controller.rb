# frozen_string_literal: true

class PwaController < ApplicationController
  protect_from_forgery except: :service_worker
  skip_before_action :require_authentication

  def service_worker; end

  def manifest; end
end
