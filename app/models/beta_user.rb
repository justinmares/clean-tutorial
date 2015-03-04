class BetaUser < ActiveRecord::Base
  validates :email, :email => true
end
