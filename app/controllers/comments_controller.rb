class CommentsController < ApplicationController
  before_action :set_message

  def create
    
    text_with_link = linkify(params[:comment][:content])
    @comment = Comment.create! content: text_with_link, message: @message, user: @current_user

  end

  private
    def set_message
      @message = Message.find(params[:message_id])
    end
end
