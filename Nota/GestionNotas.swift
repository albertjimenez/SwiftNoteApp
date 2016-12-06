//
//  GestionNotas.swift
//  Nota
//
//  Created by Albert Jiménez Fuentes on 26/7/15.
//  Copyright (c) 2015 es.uji. All rights reserved.
//

import Foundation
import Firebase
class GestionNotas {
    
    
    var conjuntoNotas : Set<Nota>
    
    //Acuerdate el lazy hace que la inicializacion ocurra solo cuando es necesario
    let ref:FIRDatabaseReference = FIRDatabase.database().reference()
    
    init() {
        self.conjuntoNotas = []
        //ref.child("user").setValue("testing");
        
    }
    func firebaseAdd(cadena:String) -> Void {
        ref.childByAutoId().setValue(cadena)
    }
    func firebaseAddNota(unaNota:Nota) -> Void {
        ref.childByAutoId().setValue(unaNota)
    }
    
    func addNuevaNota(_ unaNota : Nota = Nota()) {
        conjuntoNotas.insert(unaNota)
        
    }
    func removeNota(_ unTitulo : String) -> Bool {
        
        if (conjuntoNotas.isEmpty) {
            return false
            
        }
        
        let unaNota = buscarPorTitulo(unTitulo)
        
        if unaNota != nil {
            conjuntoNotas.remove(unaNota!)
            return true
        }
        return false
    }
    //inout permite la modificacion de los parametros
    func editaNota(_ unaNota : inout Nota, unTituloNuevo : String, unContenidoNuevo : String) -> Bool {
        if conjuntoNotas.contains(unaNota) {
            
            let indice = conjuntoNotas.index(of: unaNota)
            
            if indice != nil {
                
                let modNota : Nota = conjuntoNotas[indice!]
                modNota.titulo = unTituloNuevo
                modNota.contenido = unContenidoNuevo
                return true
            }
            
            
        }
        return false
    }
    
    func description() -> String {
        
        if (conjuntoNotas.isEmpty) {
            return ""
        }
        var cadena : String = ""
        for elem in conjuntoNotas {
            cadena.write(elem.description())
        }
        return cadena
    }
    
    func sizeNotas() -> Int {
        
        return conjuntoNotas.count
    }
    
    
    func buscarPorTitulo(_ unTitulo : String) ->Nota? {
        
        
        for elem in conjuntoNotas {
            if(elem.titulo==unTitulo){
                return elem
            }
        }
        return nil
    }
    
}





