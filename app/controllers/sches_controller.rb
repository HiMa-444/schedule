class SchesController < ApplicationController
  def index
    @sches = Sch.all
  end
  def new
    @sch = Sch.new()
  end
  def create
    @sch = Sch.new(params.require(:sch).permit(:title, :sday, :eday, :all, :memo))
    if @sch.save and @sch.sday.to_i < @sch.eday.to_i
      flash[:notice] = "予定の追加完了"
      redirect_to sches_path
    else
      flash[:nocre] = "入力内容に誤りがあります"
      redirect_to new_sch_path
    end
  end
  def show
    @sch = Sch.find(params[:id])
  end
  def edit
    @sch = Sch.find(params[:id])
  end
  def update
    @sch = Sch.find(params[:id])
    if @sch.update(params.require(:sch).permit(:title, :sday, :eday, :all, :memo)) and  @sch.sday.to_i < @sch.eday.to_i
      flash[:notice] = "予定の更新完了"
      redirect_to sches_path
    else
      flash[:noedi] = "入力内容に誤りがあります"
      redirect_to edit_sch_path
    end
  end
  def destroy
    @sch = Sch.find(params[:id])
    if @sch.delete
      flash[:notice] = "削除完了"
      redirect_to sches_path
    end
  end
end
