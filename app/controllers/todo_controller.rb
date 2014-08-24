class TodoController < ApplicationController

	def index
		@todos = Todo.where(done: false)
		@completes = Todo.where(done: true)
	end

	def new
		@todo = Todo.new
		redirect_to todo_index_path
	end

	def create
		@todo = Todo.new(todo_params)
		if todo.save
			redirect_to todo_index_path, :notice => "Item has been added to list"
		else
			render 'new'
		end
	end

	def show
		
	end

	def edit
		
	end

	def update
		@todo = Todo.find(params[:id])
		if @todo.update_attribute(:completed, true)
			redirect_to todo_index_path, :notice => "Item marked as done!"
		else
			render 'edit'
		end
	end

	def destroy
		@todo = Todo.find(params[:id])
		@todo.destroy
		redirect_to todo_index_path, :notice => "Item has been deleted"
	end

	def complete
		#TODO user can mark a todo completed
		redirect_to todo_index_path		
	end

	private
	def todo_params
		params.require(:todo).permit(:name, :completed)
	end


end
