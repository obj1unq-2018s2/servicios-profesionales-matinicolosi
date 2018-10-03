import universidades.*
import profesionales.*

class Empresa {
	var property honorarioDeReferencia
	var property profesionalesContratados = #{}
	method contratar (profesional) { profesionalesContratados.add(profesional) }
	method profesionalesCaros () { return profesionalesContratados.filter{profesional => profesional.honorariosPorHora() > honorarioDeReferencia} }
	method universidadesFormadoras () { return profesionalesContratados.map{profesional => profesional.universidad()}.asSet() }
	method profesionalMasBarato () { return profesionalesContratados.min{profesional => profesional.honorariosPorHora()} }
	method provinciaEstaCubierta (provincia) { return profesionalesContratados.any{profesional => profesional.provinciasDondePuedeTrabajar().contains("provincia")} }
	method profesionalesQueEstudiaronEn (universidad) { return profesionalesContratados.count{profesional => profesional.universidad() == universidad} }
	method esPocoAtractivo (profesional) { return profesional.provinciasDondePuedeTrabajar().all{provincia => (profesionalesContratados.any{profesionalContratado => profesionalContratado.provinciasDondePuedeTrabajar().contains(provincia) and profesional.honorariosPorHora() > profesionalContratado.honorariosPorHora()}) } } 
	method puedeSatisfacerA (solicitante) { return solicitante.listaDeUniversidades().any{universidad => profesionalesContratados.any{profesional => profesional.universidad() == universidad}} }
}
