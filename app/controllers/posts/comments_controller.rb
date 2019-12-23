class Posts::CommentsController < CommentsController
  before_action :set_commentable

  private

    def set_commentable
      @commentable = Post.find_by(id: params[:post_id])
      if @commentable.nil?
      	redirect_to posts_path
      	flash[:alert] = 'Sorry, Record not found!'
      end
    end
end
