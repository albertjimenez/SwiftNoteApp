//: Playground - noun: a place where people can play

import Cocoa

//var miNota : Nota = Nota(titulo: "Primera Nota", contenido: "Esto es una nota inicial")

var gestor : GestionNotas = GestionNotas()
gestor.addNuevaNota()
gestor.sizeNotas()
gestor.description()


var superNota = Nota(titulo: "title", contenido: "Esto es una nota")

var superNota2 = Nota(titulo: "title", contenido: "Esto es una nota")

var terceraNota = superNota
superNota == superNota2

superNota === terceraNota





gestor.addNuevaNota()
gestor.sizeNotas()

gestor.addNuevaNota(unaNota: superNota)

gestor.sizeNotas()

gestor.buscarPorTitulo(unTitulo: "title")?.description()

gestor.editaNota(unaNota: superNota, unTituloNuevo: "Ahora sí", unContenidoNuevo: "Contenidooooooo")

gestor.buscarPorTitulo(unTitulo: "Ahora sí")?.description()

