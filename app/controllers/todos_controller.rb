class TodosController < ApplicationController

	def index
		@todos = Todo.where(completed: false)
		@completes = Todo.where(completed: true)
	end

	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new(todo_params)
		if @todo.save
			redirect_to todos_path, :notice => "Your item has been added to list"
		else
			render 'new'
		end
	end

	def show
		@todo = Todo.find(params[:id])
		render 'show'
	end

	def edit
		render 'edit'
	end

	def update
		@todo = Todo.find(params[:id])
		if @todo.update_attribute(:completed, true)
			redirect_to todos_path, :notice => "Item marked as done!"
		else
			redirect_to todos_path, :notice => "There was an error, item unchanged."
		end
	end

	def destroy
		@todo = Todo.find(params[:id])
		@todo.destroy
		redirect_to todos_path, {:notice => "Item has been deleted"}
	end

	private
	def todo_params
		params.require(:todo).permit(:name, :completed)
	end


end