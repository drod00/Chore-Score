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
    @users = Parent.all
    erb :index
  end
  
  get '/sign-in' do
    @users = Parent.all
    erb :sign_in
  end
  
  post '/sign-up' do
    @user = Parent.new(:name => params[:name])
    @user.save
    redirect '/'
  end
  get '/add_kid' do  
    erb :add_kid  #used to be sign_up
  end
  
  post '/add_kid' do
    @kid = Kid.create(:name => params[:kidname])
    
    redirect '/'
  end
  
  get '/add_chore' do  
    @user = Parent.find_by(:id => session[:user_id])
    
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
    @input_name = params[:kidname]
    @input_score = params[:score]
    erb :results
  end
  
end