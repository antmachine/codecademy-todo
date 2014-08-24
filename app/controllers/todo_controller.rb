class TodoController < ApplicationController

	def index
		@todos = Todo.where(done: false)
		@completes = Todo.where(done: true)
	end

	def new
		redirect_to todo_index_path
	end

	def show
		
	end

	def edit
		
	end

	def update
		redirect_to todo_index_path		
	end

	def destroy
		redirect_to todo_index_path		
	end

	def complete
		#user can mark a todo completed
		redirect_to todo_index_path		
		
	end
end
