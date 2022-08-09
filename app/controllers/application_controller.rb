class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/http://localhost:9292/todos" do
    
  # end

  post "/todos" do
    task = Task.create(

    )
  end

end
