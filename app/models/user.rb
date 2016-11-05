class User < ApplicationRecord
  has_secure_password

  def self.from_omniauth(auth_info)
    where(uid: auth_info[:uid]).first_or_create do |new_user|
      new_user.uid                = auth_info.uid
      new_user.password           = auth_info.uid
      new_user.first_name         = auth_info.extra.raw_info.name.split.first
      new_user.last_name          = auth_info.extra.raw_info.name.split.last
      new_user.oauth_token        = auth_info.credentials.token
      new_user.oauth_token_secret = auth_info.credentials.secret
    end
  end
end
