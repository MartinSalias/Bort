Feature: WINABORT

Scenario: Toma el nonmbre de la direccion
	Given voy a la portada
	Then debo ver "WIN A BORT"
	Then debo ver "Comienza a jugar"

Scenario: Jugador presiona jugar
	Given voy a la portada
	When presiono "Jugar"
	Then debo ver "5"


