class User < ApplicationRecord
  has_many :phrases
  has_many :followers, through: :phrases

  validates_presence_of :username, :token, :secret
  validates_uniqueness_of :username, :token, :secret
  validates_length_of :token, :secret, minimum: 5, too_short: "This entry is too short."
end
