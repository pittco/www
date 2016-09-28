class User < ActiveRecord::Base
  has_many :posts
  serialize :data_hash

  def self.from_omniauth(access_token)
    data = access_token.info
    return nil unless data['email'].match /\@pittco.org$/
    user = User.where(email: data['email']).first

    unless user
      user = User.create username: data['name'],
                         email: data['email'],
                         data_hash: access_token
    end

    user
  end
end
