
# frozen_string_literal: true

require "rails_helper"

describe "GET /health_check" do
  it "200返すこと" do
    get health_check_path
    expect(response).to have_http_status(200)
  end
end
