class UserMixtape < ActiveRecord::Base
  attr_accessible :mixtape_id, :user_id

  belongs_to :mixtape
  belongs_to :user
end
