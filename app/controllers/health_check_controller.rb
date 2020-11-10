class HealthCheckController < ApplicationController
  def basic
    render json: { state: :up}, status: 200
  end
end
