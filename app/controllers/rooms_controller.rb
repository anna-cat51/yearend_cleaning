class RoomsController < ApplicationController
  before_action :set_room, only: %i[ show edit update destroy ]

  # GET /rooms
  def index
    if user_signed_in?
      # 登録ユーザーの場合: 自分が追加した部屋とテンプレートの部屋を表示
      @rooms = current_user.rooms + Room.where(is_template: true)
    else
      # 未登録ユーザーの場合: テンプレートの部屋のみ表示
      @rooms = Room.where(is_template: true)
    end
  end

  # GET /rooms/1
  def show
  end

  # GET /rooms/new
  def new
    @room = Room.new
  end

  # GET /rooms/1/edit
  def edit
  end

  # POST /rooms
  def create
    @room = current_user.rooms.new(room_params)

    if @room.save
      flash.now.notice = "部屋を登録しました。"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rooms/1
  def update
    if @room.update(room_params)
      flash.now.notice = "部屋を更新しました。"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /rooms/1
  def destroy
    @room.destroy
    flash.now.notice = "部屋を削除しました。"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_params
      params.require(:room).permit(:name, :age)
    end
end