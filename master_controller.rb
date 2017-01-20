require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative './controllers/admin_controller'
require_relative './controllers/vote_controller'

get "/" do
    erb :home
end

get "/admin" do
    erb(:'admin/home')    
end

get "/vote" do
    erb(:'votes/home')
end