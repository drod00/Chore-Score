require './config/environment'
require './app/models/chore'
require './app/models/kid'
require './app/models/parent'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    @kids = Kid.all
    @chores = Chore.all
    erb :index
  end
  
  get '/add_kid' do  
    erb :add_kid  #used to be sign_up
  end
  
  post '/add_kid' do
    @kid = Kid.create(:name => params[:kidname])
    redirect '/'
  end
  
  get '/add_chore' do  
    erb :add_chore  #used to be sign_up
  end
  
  post '/add_chore' do
    @chore = Chore.create(:name => params[:chorename])
    redirect '/'
  end
  
  get '/results' do
    erb :results
  end
  
  post '/results' do
    @kids = Kid.all
    erb :results
  end
  
end