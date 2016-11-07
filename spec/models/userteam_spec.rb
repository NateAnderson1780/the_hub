require 'rails_helper'

RSpec.describe Userteam, type: :model do
  context "associations" do
    it { should belong_to(:team) }
    it { should belong_to(:user) }
  end
end
