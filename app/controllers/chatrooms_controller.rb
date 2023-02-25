class ChatroomsController < ApplicationController
  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      ChatroomUser.create(user_id: current_user.id, chatroom_id: @chatroom.id)
      redirect_to @chatroom
    else
      render :new
    end
  end

  def show
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name, :description)
  end
end
