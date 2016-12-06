//
//  GestionNotas.swift
//  Nota
//
//  Created by Albert Jiménez Fuentes on 26/7/15.
//  Copyright (c) 2015 es.uji. All rights reserved.
//

import Foundation
public class GestionNotas {
    
    var listaNotas : [Nota]
    
    
    
    //Constructor
    
    public init() {
        self.listaNotas = []
        //        self.mapaNotas = Dictionary()
    }
    
    
    
    //Funciones add, remove, description, search, nº notas almacenadas
    //Estaria bien si tuvieramos un if compuesto - funcional
    
    //mi add no permitirá
    
    //    public func addNota(titulo : String, unContenido : String) {
    //
    //        let miNota = Nota(titulo: titulo, contenido: unContenido)
    //
    //        //1ºCaso si está vacio
    //
    //        // || mapaNotas.isEmpty) {
    //        listaNotas.append(miNota)
    //        //            mapaNotas.updateValue(miNota, forKey: miNota.titulo)
    //
    //
    //    }
    
    public func addNuevaNota(unaNota : Nota = Nota()) {
        listaNotas.append(unaNota)
        
        
    }
    public func removeNota(unTitulo : String) -> Bool {
        
        if (listaNotas.isEmpty) {
            return false
            
        }
        //        else if mapaNotas.indexForKey(unTitulo) == nil {
        //            return false
        //        }
        //            mapaNotas.removeValueForKey(unTitulo)
        var contador = 0
        for elemento in listaNotas {
            if elemento.titulo == unTitulo {
                break
            }
            contador+=1
        }
        listaNotas.remove(at: contador)
        return true
        
    }
    
    //inout permite la modificacion de los parametros, pero no es necesario 
    
    public func editaNota( unaNota : Nota, unTituloNuevo : String, unContenidoNuevo : String) -> Bool {
        if listaNotas.contains(unaNota) {
            
            let indice = listaNotas.index(of: unaNota)
            let modNota : Nota = listaNotas[indice!]
            modNota.titulo = unTituloNuevo
            modNota.contenido = unContenidoNuevo
            return true
            
            
        }
        return false
    }
    
    
    public func description() -> String? {
        
        if (listaNotas.isEmpty) {
            return nil
        }
        var cadena = ""
        for nota in listaNotas {
            cadena.write(nota.description())
        }
        return cadena
    }
    
    public  func sizeNotas() -> Int {
        
        if (listaNotas.isEmpty ) {
            return 0
        }
        
        return listaNotas.count
        
    }
    
    public func buscarPorTitulo(unTitulo : String) ->Nota? {
        
        
        if (listaNotas.isEmpty) {
            return nil
        }
        var contador = 0
        for elemento in listaNotas {
            if elemento.titulo == unTitulo {
                break
            }
            contador += 1
        }
        
        let miNota = listaNotas[contador]
        return miNota
        
    }
    
    
}




