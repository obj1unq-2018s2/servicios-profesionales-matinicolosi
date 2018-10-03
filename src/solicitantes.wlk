import universidades.*
import empresas.*
import profesionales.*
import asociacion.*

class Institucion {
	var property esPersona = false
	var property listaDeUniversidades = []
}

class Persona {
	var property esPersona = true
	var property puedeSerAtendidoPorProfesional = true
	var provinciaDondeVive
}