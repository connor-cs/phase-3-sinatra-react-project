class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/http://localhost:9292/todos" do
    tasks = Task.all
    tasks.to_json
  end

  post "/http://localhost:9292/todos" do
    task = Task.create(
    taskname: params[:taskname]
    category_id: params[:category_id]
    )
  end

  delete "/http://localhost:9292/todos/:id" do
    task = task.find(params[id])
    task.destroy
    task.to_json
  end
  
end
