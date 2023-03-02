class ChatroomsController < ApplicationController
  # def show
  #   @chatroom = Chatroom.find(params[:id])
  #   @message = Message.new
  # end

  def index
    @chatrooms = policy_scope(Chatroom)
    # Only show chatrooms where a message has been sent
    @chatrooms = @chatrooms.select { |chatroom| chatroom.messages.any? }
                            .sort_by { |chatroom| chatroom.messages.last.created_at }
    @chatroom = Chatroom.new
    user_chatrooms = @chatrooms.select do |chatroom|
      chatroom.chatroom_user.any? do |chatroom_user|
        chatroom_user.user_id == current_user.id
      end
    end
    @chatrooms_count = user_chatrooms.count
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
    @user = User.find(params[:user])
    @current_user = current_user
   #@rooms = Chatroom.public_rooms
    @room = Chatroom.new
    @room_name = get_name(@user, @current_user)
    @single_room = Chatroom.where(name: @room_name).first || Chatroom.create_private_room([@user, @current_user], @room_name)
    @messages = @single_room.messages
    redirect_to chatroom_path(@single_room)
    authorize @single_room
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
