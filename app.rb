require 'sinatra'
require_relative "lib/WinABort.rb"

# root
get '/' do
	@@game = Puntos.new
	@status = @@game.visualizarstatus
	@ultcarta= @@game.visualizacarta
	@scoreA=  @@game.visualizarscore
	erb :home
end

# jugar
post '/jugar' do
	@@game.apuestaplayer 5

	@ultcarta= @@game.visualizacarta
	@scoreA=  @@game.visualizarscore
	@status = @@game.visualizarstatus

	erb :home
end

