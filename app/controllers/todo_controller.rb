class TodoController < ApplicationController
    def index
    end 
    def show
        todo_id = params[:id]
        
        
        
        if todo_id == '1'
            @todo_description="do dishes"
        elsif todo_id == '2'
            @todo_description="do homework"
        elsif todo_id == '3'
            @todo_description="clean room"
        elsif todo_id == '3'
            @todo_description="play football"
        elsif todo_id == '4'
            @todo_description="play the Xbox One"
        end
    end
end
