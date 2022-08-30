class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/todos" do
    tasks = Task.all
    tasks.to_json include: :category
  end

  post "/todos" do
    category = Category.find_by(:category == params[:category])
    task = Task.create(
    taskname: params[:taskname],
    category_id: category.id
    )
    task.to_json include: :category
  end

  delete "/todos/:id" do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end
  
end
