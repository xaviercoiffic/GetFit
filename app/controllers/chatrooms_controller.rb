class ChatroomsController < ApplicationController

  def index
    @chatrooms = Chatroom.where(client_id: current_user.id).or(Chatroom.where(user_id: current_user.id))
    @chatrooms = @chatrooms.select { |chatroom| chatroom.messages.any? }.sort_by { |chatroom| chatroom.messages.last.created_at }
    @chatrooms_count = @chatrooms.count
  end
  

  def show
    @chatrooms = Chatroom.all
    @chatrooms = @chatrooms
                  .select { |chatroom| chatroom.messages.any? }
                  .sort_by { |chatroom| chatroom.messages.last.created_at }
    @message = Message.new
    @chatroom = Chatroom.find(params[:id])
  end

  def new
    create
  end

  def create
    @user = User.find(params[:user_id])
    @current_user = current_user
    @room = Chatroom.new
    @room_name = get_name(@user, @current_user)
    @single_room = Chatroom.where(name: @room_name).first || Chatroom.create(user: @user, name: @room_name, client_id: @current_user.id)
    @messages = @single_room.messages
    redirect_to chatroom_path(@single_room)
  end


  def subscribed
    # stream updates to the chatroom
    chatroom = Chatroom.find(params[:chatroom_id])
    stream_for chatroom
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end

  def get_name(user1, user2)
    users = [user1, user2].sort
    "private_#{users[0].id}_#{users[1].id}"
  end
end
