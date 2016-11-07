require 'rails_helper'

RSpec.describe Team, type: :model do
  context "associations" do
    it { should have_many(:userteams) }
    it { should have_many(:users) }
  end
end
