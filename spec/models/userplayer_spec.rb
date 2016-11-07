require 'rails_helper'

RSpec.describe Userplayer, type: :model do
  context "associations" do
    it { should belong_to(:player) }
    it { should belong_to(:user) }
  end
end
