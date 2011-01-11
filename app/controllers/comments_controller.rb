class CommentsController < ApplicationController
  before_filter :authenticate_user!
  
  def create     
    commentable_type = params[:comment][:commentable]
    commentable_id = params[:comment][:commentable_id]
    # Get the object that you want to comment
    commentable = Comment.find_commentable(commentable_type, commentable_id)
    
    # Create a comment with the user submitted content
    comment = Comment.new(:title => params[:comment][:title], :comment => params[:comment][:comment])
    # Assign this comment to the logged in user
    comment.user_id = current_user.id
    
    # Add the comment
    commentable.comments << comment
    
    redirect_to request.referer    
  end
end