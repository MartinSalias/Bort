require_relative "../lib/WinABort.rb"

describe "Win Bort" do

it "Empieza el partido" do
	puntos = Puntos.new
	puntos.visualizarstatus.should == "Comienza a jugar"
	puntos.visualizarscore.should == "0"

end

it "Primer carta jugador" do
	puntos = Puntos.new
	puntos.apuestaplayer 5
	puntos.visualizarscore.should == "5"
	puntos.visualizacarta.should == "5"
	puntos.visualizarstatus.should == "Seguis apostando ?"
end

it "Segunda carta jugador" do
	puntos = Puntos.new
	puntos.apuestaplayer 5
	puntos.apuestaplayer 6
	puntos.visualizarscore.should == "11"
	puntos.visualizacarta.should == "6"
	puntos.visualizarstatus.should == "Seguis apostando ?"
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

it "Gana jugador" do
	puntos = Puntos.new
	puntos.apuestaplayer 5
	puntos.apuestaplayer 6
	puntos.apuestaplayer 10
	puntos.plantarse 15
	puntos.visualizarscore.should == "21"
	puntos.visualizarstatus.should == "Le ganaste a Bort"
	puntos.visualizacarta.should == "10"
	puntos.visualizarscorebort.should == "15"
end


it "Gana Bort" do
	puntos = Puntos.new
	puntos.apuestaplayer 5
	puntos.apuestaplayer 6
	puntos.apuestaplayer 5
	puntos.plantarse 20
	puntos.visualizarscore.should == "16"
	puntos.visualizarstatus.should == "Bort te cago a palos"
	puntos.visualizacarta.should == "5"
	puntos.visualizarscorebort.should == "20"
end


it "Volver a jugar" do
	puntos = Puntos.new
	puntos.apuestaplayer 12
	puntos.apuestaplayer 10
	puntos.apuestaplayer 5
	puntos.visualizarstatus.should == "PERDISTE"
	puntos.visualizarscore.should == "0"
	puntos.visualizarstatus.should == "Comienza a jugar"
end

                
end

