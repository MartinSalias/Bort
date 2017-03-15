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
	@@game.apuestaplayer 0

	@ultcarta= @@game.visualizacarta
	@scoreA=  @@game.visualizarscore
	@status = @@game.visualizarstatus

	erb :home
end

# plantarse
post '/plantarse' do
	@scoreA=  @@game.visualizarscore
	@ultcarta= @@game.visualizacarta

	@@game.plantarse 0
	@scorebort = @@game.visualizarscorebort
	@status = @@game.visualizarstatus

	erb :home
end

