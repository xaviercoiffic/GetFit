class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save
      respond_to do |format|
        format.html { redirect_to chatroom_path(@chatroom) }
        format.js { render json: @message.to_json(include: :user) }
      end
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end
  

  private

  def message_params
    params.require(:message).permit(:content)
  end
end


