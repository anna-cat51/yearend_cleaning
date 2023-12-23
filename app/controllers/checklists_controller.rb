class ChecklistsController < ApplicationController
  def index
    @checklists = Checklist.all
  end

  def new
    @room = Room.find(params[:room_id])
    @checklist = Checklist.new
  end

  def create
    @room = Room.find(params[:room_id])
    @checklist = @room.checklists.build(checklist_params)
    if @checklist.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to checklists_path, notice: "部屋を追加しました。" }
      end
    else
      render :new
    end
  end

  def edit;end

  def update
    def update
      if @checklist.update(checklist_params)
        flash.now.notice = "チェックリスとを更新しました。"
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  private
  def checklist_params
    params.require(:checklist).permit(:name)
  end
end
