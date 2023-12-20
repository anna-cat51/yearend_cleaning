class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      flash.now.notice = "部屋を追加しました。"
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:name)
  end
end
