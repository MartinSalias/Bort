class Puntos

	def initialize
		 @scoreA = 0
		 @ultcarta = 0
		 @status = "Comienza a jugar"
		 @scorebort = 0
	end

	def visualizarscore
		"#{@scoreA}"
	end

	def apuestaplayer valor
		
		 if @scorebort > 0
				@scoreA = 0
				@scorebort = 0
		 end			

			if valor == 0
				valor = Random.rand(1..12)
			end			
			
			@scoreA += valor
			@ultcarta = valor

		end

	def visualizacarta
		"#{@ultcarta}"
	end

	def visualizarstatus
		if @scoreA == 0
			@status = "Comienza a jugar"
		else
			if @scoreA > 21
				@status = "PERDISTE"
				@scoreA = 0
			else
				@status = "Seguis apostando ?"
			end
		end

		#Verifico si no se termino el partido		
		if @scorebort > 0
			if @scorebort > @scoreA
				@status = "Bort te cago a palos"
			else
				@status = "Le ganaste a Bort"
			end
		end
 
		"#{@status}"
	end

	def visualizarscorebort
			"#{@scorebort}"
	end

	def plantarse valor

			if valor == 0
				valor = Random.rand(15..21)
			end			

		@scorebort = valor

	end

end


