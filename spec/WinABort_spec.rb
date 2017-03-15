require_relative "../lib/WinABort.rb"

describe "Win Bort" do

it "Empieza el partido" do
	puntos = Puntos.new
	puntos.visualizarstatus.should == "Comienza a jugar"
end

it "Primer carta jugador" do
	puntos = Puntos.new
	puntos.apuestaplayer 5
	puntos.visualizarscore.should == "5"
	puntos.visualizacarta.should == "5"
end

it "Segunda carta jugador" do
	puntos = Puntos.new
	puntos.apuestaplayer 5
	puntos.apuestaplayer 6
	puntos.visualizarscore.should == "11"
	puntos.visualizacarta.should == "6"
end

it "Pierde jugador" do
	puntos = Puntos.new
	puntos.apuestaplayer 5
	puntos.apuestaplayer 6
	puntos.apuestaplayer  12
	puntos.visualizarscore.should == "23"
	puntos.visualizarstatus.should == "PERDISTE"
	puntos.visualizacarta.should == "12"
end

                
end

