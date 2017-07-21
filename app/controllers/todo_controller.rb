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
    
    def edit
        @todo=todo.find_by_id(params[:id])
    end
    
    def update
         t = todo.new
         t.description = params['description']
         t.date = params['date']
         t.save
        redirect_to "/todo/show/#{ t.id }"
    end
    
    def create
         t = todo.new
         t.description = params['description']
         t.date = params['date']
         t.save
        redirect_to "/todo/show/#{t.id }"
    end
    
    def destroy
        t = Todo.find_by_id(params[:id])
        t.destroy
        redirect_to "/todo/index"
    end
end