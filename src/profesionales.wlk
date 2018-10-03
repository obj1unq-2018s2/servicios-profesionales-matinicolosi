import universidades.*
import empresas.*
import asociacion.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad () { return universidad }
	method universidad (univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar () { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }

	method honorariosPorHora () { return 3000 }
	method cobrarImporte (cantidad) { return asociacion.totalRecaudado() == asociacion.totalRecaudado() + cantidad }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad () { return universidad }
	method universidad (univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar () { return #{universidad.provinciaDeLaUniversidad()} }
	
	method honorariosPorHora () { return universidad.honorariosPorHoraRecomendados() }
	method cobrarImporte (cantidad) { return universidad.totalDonaciones() == universidad.totalDonaciones() + cantidad/2 }
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var property honorariosPorHora
	var property listaProvincias
	var property totalImporte = 0
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar () { return #{listaProvincias} }
	method cobrarImporte (cantidad) { totalImporte += cantidad }
	method pasarDinero (profesional, cantidad) {
		totalImporte -= cantidad
		profesional.cobrarImporte (cantidad)
	}
}
