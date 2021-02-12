class Follower < ApplicationRecord
  enum state: {
    sent: 1,
    accepted: 2,
    rejected: 3
  }
  belongs_to :user, class_name: 'User', foreign_key: "user_id"
  belongs_to :follower_user, class_name: 'User', foreign_key: "follower_user_id"
end
