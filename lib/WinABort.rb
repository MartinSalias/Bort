class Puntos

                def initialize
                               @scoreA = 0
                               @scoreB = 0
                end

                def visualizarscore
			if @scoreA > 21
				"Perdiste"
                               else if @scoreA == 0
                                         "Comienza a jugar"
				else 
					"#{@scoreA}"
                               end
			
			 end
		end

                def apuestaplayer valor
                               @scoreA += valor
                end



end


