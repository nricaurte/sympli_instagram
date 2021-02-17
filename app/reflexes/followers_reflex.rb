class FollowersReflex < ApplicationReflex

  def confirm
    followers_id = element.dataset[:followers_id]
    follower = Follower.find(followers_id)
    follower.update state:element.dataset[:state_id].to_i
  end

  def follow
    followers_id = element.dataset[:followers_id]
    follower = Follower.find(followers_id)
    sent_status=1
    request = Follower.create(user:follower.follower_user, follower_user: follower.user, state:sent_status)
  end

  def follow_profile
    user = User.find(element.dataset[:user_id])
    follower_user = User.find(element.dataset[:current_user_id])
    sent_status=1
    Follower.create(user:user, follower_user: follower_user, state:sent_status)
  end

end