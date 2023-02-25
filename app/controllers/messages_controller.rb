class MessagesController < ApplicationController
  before_action :set_chatroom

  def create
    @message = @chatroom.messages.new(message_params)
    @message.user = current_user
    if @message.save
      ActionCable.server.broadcast "chatroom_channel",
                                   message: render_message(@message),
                                   chatroom_id: @chatroom.id
      head :ok
    else
      flash[:alert] = "Unable to send message."
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def set_chatroom
    @chatroom = Chatroom.find(params[:chatroom_id])
  end

  def render_message(message)
    render(partial: 'messages/message', locals: { message: message })
  end
end
