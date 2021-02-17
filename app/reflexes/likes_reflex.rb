class LikesReflex < ApplicationReflex
  def like
    user = User.find(element.dataset[:user_id])
    post = Post.find(element.dataset[:post_id])
    like = Like.where(user:user, post:post).first
    like.nil? ? Like.create(user:user, post:post) : Like.delete(like)
  end
end