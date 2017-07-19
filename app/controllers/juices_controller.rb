class JuicesController < ApplicationController

  get '/juices' do
    @juices = Juice.all
    byebug
    erb :'juices/index.html'
  end

  get '/juices/new' do
    erb :'juices/new.html'
  end

  # Show me a form to edit the juice at id
  # Juice.find(params[:id]
  get '/juices/:id/edit' do
    @juice = Juice.find(params[:id])
    erb :'juices/edit.html'
  end

  patch '/juices/:id' do
    juice = Juice.find(params[:id])
    redirect '/juices'
  end

  # Show me the juice at id
  # Juice.find(:id)

  # get '/juices/:id' do
  #
  # end

  post '/juices' do
    # juice = Juice.create(name: params[:juice_name])
    juice = Juice.create(params[:juice])
    redirect '/juices'
  end

end
