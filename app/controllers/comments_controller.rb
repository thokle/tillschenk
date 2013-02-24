class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:post_id])
    @comments = @blog.comments.create(params[:comments])
    if @comments.save
    redirect_to post_path(@blog)
  else
    
  end
  end
end
