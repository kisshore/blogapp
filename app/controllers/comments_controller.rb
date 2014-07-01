class CommentsController < ApplicationController
  def index
    
    @all_comments = Comment.all
    
    
  end
  
  def method2
  end
end
