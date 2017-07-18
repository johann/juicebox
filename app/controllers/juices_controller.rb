class JuicesController < ApplicationController

  # GIVE ME ALL THE juices
  # SELECT * FROM juices
  get '/juices' do
    @juices = Juice.all
    erb :'juices/index.html'
  end

  get '/juices/new' do
    erb :'juices/new.html'
  end

  # SHow me the juice at id
  # Juice.find(:id)
  get '/juices/:id' do

  end

  # Show me a form to edit the juice at id
  # Juice.find(params[:id])
  #
  get '/juices/:id/edit' do
    @juice = Juice.find(params[:id])
    erb :'/juices/edit.html'

  end

  patch '/juices/:id' do
    
  end


  post '/juices' do
    byebug
    juice = Juice.create(params[:juice])
    redirect '/juices'
  end
end
