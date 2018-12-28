# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do
  before do
    @user = build(:user)
  end

  describe "バリデーション" do
    xit "nameとemailどちらも値が設定されていれば、OK" do
    end

    xit "nameが空だとNG" do
    end

    xit "emailが空だとNG" do
    end
  end
end
