require_relative '../models/pub.rb'
require_relative '../models/vote.rb'
require 'pry-byebug'

#index

get '/admin/pubs' do

   @pubs = Pub.all()
    erb(:'admin/pubs/index')

end

#new

get '/admin/pubs/new' do

     erb(:'admin/pubs/new')

end

#create

post '/admin/pubs' do

    @pubs = Pub.new(params)
    @pubs.save()
    redirect to ('/admin/pubs')

end

#show

get '/admin/pubs/:id' do

    @pub = Pub.find(params[:id])
    erb(:'admin/pubs/show')
end

#edit

get '/admin/pubs/:id/edit' do

    @pub = Pub.find(params[:id])
    erb(:'admin/pubs/edit')

end

#update

put '/admin/pubs/:id' do
    @pub = Pub.find(params[:id])
    @pub.update(params)
    redirect to "/admin/pubs/#{params[:id]}"
end


#delete

delete '/admin/pubs/:id' do

    Pub.destroy(params[:id])
    redirect to ('/admin/pubs')

end


