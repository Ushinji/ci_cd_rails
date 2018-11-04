# frozen_string_literal: true

class HealthCheckController < ApplicationController
  def index
    head :ok
  end
end
