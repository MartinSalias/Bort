require 'sinatra'
require_relative "lib/WinABort.rb"

# root
get '/' do
	@@game = Puntos.new
	@resultado = @@game.visualizarscore

	erb :home
end

# jugar
post '/jugar' do
	@@game.apuestaplayer 5
	@resultado = @@game.visualizarscore

	erb :home
end

