class ChatroomsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  
  def index
    @chatrooms = Chatroom.all
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.create(chatroom_params)
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    else
      render :new
    end
  end

  def show
    @message = Message.new
  end

  def edit;end

  def update
    @chatroom.update(chatroom_params)
    redirect_to chatroom_path(@chatroom)
  end

  def destroy
    @chatroom.destroy
    redirect_to chatrooms_path
  end

  private

  def set_params
    @chatroom = Chatroom.find(params[:id])
  end

  def chatroom_params
    params.(:chatroom).permit(:name)
  end
end
