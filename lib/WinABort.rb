class Puntos

	def initialize
		 @scoreA = 0
		 @ultcarta = 0
		 @status = "Comienza a jugar"
	end

	def visualizarscore
		if @scoreA > 21
			@status = "PERDISTE"
		else
			@status = "Seguis apostando ?"
		end
		"#{@scoreA}"
	end

	def apuestaplayer valor

	if (@status == "PERDISTE")
		@scoreA = 0
	end

		@scoreA += valor
		@ultcarta = valor
	end

	def visualizacarta
		"#{@ultcarta}"
	end

	def visualizarstatus
		"#{@status}"
	end

end


