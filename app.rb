require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
   
   erb :index
  end 
  
  get '/new' do 
    :create_puppy
  end 
  
  post '/puppy' do 
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
     erb :display_puppy
     text_from_user = params[:user_text]
 
  end 
end
