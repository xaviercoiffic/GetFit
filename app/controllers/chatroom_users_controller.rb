class ChatroomUsersController < ApplicationController
  def new
    @chatroom_user = ChatroomUser.new
  end

  def create
    @chatroom_user = ChatroomUser.new(chatroom_user_params)
    if @chatroom_user.save
      redirect_to @chatroom_user.chatroom
    else
      render :new
    end
  end

  private

  def chatroom_user_params
    params.require(:chatroom_user).permit(:chatroom_id, :user_id)
  end
end
