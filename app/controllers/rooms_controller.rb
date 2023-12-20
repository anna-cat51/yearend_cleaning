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
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to rooms_path, notice: "部屋を追加しました。" }
      end
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:name)
  end
end
