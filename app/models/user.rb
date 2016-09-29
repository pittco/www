class User < ActiveRecord::Base
  has_many :posts
  serialize :data_hash

  def admin?
    !!email.match(/\@pittco.org$/)
  end

  # TODO: Make this not a stub
  def paid?
    true
  end

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    unless user
      user = User.create email: data['email'],
                         data_hash: access_token
    end

    user
  end
end
