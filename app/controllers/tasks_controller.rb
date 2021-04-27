class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params.require(:task).permit(:title, :start_day, :all_day, :start_time, :end_time, :content))
    if @task.save
      flash[:notice] = "新しい予定を追加しました"
      redirect_to(tasks_path)
    else
      flash[:alert] = "新しい予定を追加できませんでした"
      render("new")
    end
  end

  def show
    @task = Task.find_by(id: params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(params.require(:task).permit(:title, :start_day, :all_day, :start_time, :end_time, :content))
      flash[:notice] = "予定を変更しました"
      redirect_to(tasks_path)
    else 
      flash[:alert] = "新しい予定を追加できませんでした"
      render("edit")
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:alert] = "予定を削除しました"
    redirect_to("/")
  end
end
