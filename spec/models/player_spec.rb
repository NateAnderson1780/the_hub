require 'rails_helper'

RSpec.describe Player, type: :model do
  it { should have_many(:userplayers) }
  it { should have_many(:users) }
end
