require 'rails_helper'

RSpec.describe User, type: :model do
  context "associations" do
    it { should have_many(:userteams) }
    it { should have_many(:teams) }
  end

  it "can set user info from auth data" do
    auth_info = OmniAuth::AuthHash.new({
      provider: 'twitter',
      uid: '12345',
      info: {
        first_name: "Gaius",
        last_name:  "Baltar",
        email:      "curtislowe10@gmail.com"
      },
      credentials: {
        token: "123456",
        secret: "234567",
        expires_at: Time.now + 1.week
      },
      extra: {
        raw_info: {
          gender: 'male',
          name: 'Nate Anderson'
        }
      }
    })

    user = User.from_omniauth(auth_info)

    expect(user.uid).to eq('12345')
  end
end
