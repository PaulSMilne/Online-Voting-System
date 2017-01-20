require_relative '../models/pub.rb'
require_relative '../models/vote.rb'
require 'pry-byebug'

get '/votes' do
    #Display a dropdown list of unregistered pubs. Choose a pub to register.
    @pubs = Pub.unreg
    erb(:'votes/home')

end

 put '/votes/register' do

    @pub = Pub.find(params[:id])
    @pub.register
    redirect to "/votes/ballot/#{params[:id]}"
end

get '/votes/ballot/:id' do

    @pub = Pub.find(params[:id])
    @candidates = Pub.all()
    erb(:'votes/ballot')
end

post '/votes/cast_ballot' do
    votes = params.values
    if votes.count <= 3
        votes = votes.map {|vote| Vote.new('vote_id'=>vote)}
        votes.each {|vote| vote.save}
        # binding.pry
        redirect to "/votes/leaderboard"
    else
        redirect to "/votes/vote_again"
    end
end

get '/votes/leaderboard' do 
    @votes = Vote.gather()
    # take the @tally hash, iterate through it and replace each key number string with the corresponding pub name - using .pub_name method?
    erb(:'votes/leaderboard')
end

get '/votes/vote_again' do
    # @pub = Pub.find(params[:id])
    erb(:'votes/error') 
end
