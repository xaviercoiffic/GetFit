class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chatroom, only: [:index, :create]


  def index
    @chatroom = current_user.chatrooms.find_by(id: params[:chatroom_id])
  
    # Check if the current user is authorized to access the chatroom
    unless @chatroom
      redirect_to root_path, alert: "You are not authorized to access this chatroom."
      return
    end
  
    @messages = @chatroom.messages.order(created_at: :asc).paginate(page: params[:page], per_page: 10)
  
    respond_to do |format|
      format.js
    end
  end
  
  
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

  def set_chatroom
    @chatroom = Chatroom.find(params[:chatroom_id])
    unless @chatroom.user == current_user || @chatroom.client_id == current_user.id
      redirect_to root_path, alert: "You are not authorized to access this chatroom."
    end
  end

end
