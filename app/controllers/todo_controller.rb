class TodoController < ApplicationController
    def index
    end 
    def show
        @todo = Todo.find_by_id(params[:id])
    end
    def new
    end
    def create
        t = todo.new
        t.description = params['description']
        t.date = params['date']
        t.save
        redirect_to "/todo/show/#{ t.id }"
    end
end

