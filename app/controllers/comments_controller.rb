class CommentsController < ApplicationController
    before_action :authenticate_user!
  
    # ...
  
    def create
      @commentable = find_commentable
      @comment = @commentable.comments.build(comment_params)
      @comment.user = current_user
  
      if @comment.save
        redirect_to @commentable, notice: 'Comment was successfully created.'
      else
        redirect_to @commentable, alert: 'Error creating comment.'
      end
    end
  
    # ...
  
    private
  
    def comment_params
      params.require(:comment).permit(:content)
    end
  
    def find_commentable
      if params[:article_id]
        Article.find(params[:article_id])
      elsif params[:comment_id]
        Comment.find(params[:comment_id])
      end
    end
  end
  