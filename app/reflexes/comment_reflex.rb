class CommentReflex < ApplicationReflex

    def create(comment= "", user_id="", post_id="")
        user = User.find(user_id)
        post = Post.find(post_id)
        Comment.create(user: user, post:post, content: comment)
        
    end

end
