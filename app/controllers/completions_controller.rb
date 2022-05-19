class CompletionsController < ApplicationController
  def create
    todo.complete!
    redirect_to root_path
  end

  def destroy
    todo.incomplete!
    redirect_to root_url
  end

  private 

  def todo
    current_user.todos.find(params[:todo_id])
  end
end