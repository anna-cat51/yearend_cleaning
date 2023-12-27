class ChecklistsController < ApplicationController
  def index
    @checklists = Checklist.all
  end

  def new
    @room = Room.find(params[:room_id])
    @checklist = Checklist.new
  end

  def show
    @room = Room.find(params[:room_id])
    @checklist = @room.checklists.find(params[:id])
  end

  def create
    @room = Room.find(params[:room_id])
    @checklist = @room.checklists.new(checklist_params.merge(user: current_user))
    if @checklist.save
      flash.now.notice = "チェックリストを追加しました。"
    else
      render :new
    end
  end

  def edit
    @room = Room.find(params[:room_id])
    @checklist = @room.checklists.find(params[:id])
  end

  def update
    @room = Room.find(params[:room_id])
    @checklist = @room.checklists.find(params[:id])
    if @checklist.update(checklist_params)
      flash.now.notice = "チェックリストを更新しました。"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def toggle
    @room = Room.find(params[:room_id])
    @checklist = Checklist.find(params[:id])
    @checklist.update(checked: !@checklist.checked)  # ここで@checklistが正しいChecklistモデルのインスタンスになる

    render turbo_stream: turbo_stream.replace(
      @checklist,
      partial: 'checked',
      locals: { checklist: @checklist }
    )
  end

  def destroy
    @room = Room.find(params[:room_id])
    @checklist = Checklist.find(params[:id])
    @checklist.destroy
    flash.now.notice = "チェックリストを削除しました。"
  end

  private
  def checklist_params
    params.require(:checklist).permit(:name, :checked)
  end
end
