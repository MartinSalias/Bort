require 'sinatra'

# root
get '/' do
	erb :home
end

# jugar
post '/jugar' do
	erb :home
end

