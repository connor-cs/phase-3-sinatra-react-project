class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/todos" do
    tasks = Task.all
    tasks.to_json include: :category
  end

  post "/todos" do
    task = Task.create(
    taskname: params[:taskname],
    category_id: params[:category_id]
    )
    task.to_json
  end

  delete "/todos/:id" do
    task = task.find(params[:id])
    task.destroy
    task.to_json
  end
  
end
