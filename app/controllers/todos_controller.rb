class TodosController < ApplicationController
  before_action :authenticate
  
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create(todo_params)
    if @todo.save
      redirect_to root_path
    else
      render :new, notice: "Something is wrong"
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end