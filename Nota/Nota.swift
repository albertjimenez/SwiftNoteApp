//
//  Nota.swift
//  Nota
//
//  Created by Albert Jiménez Fuentes on 26/7/15.
//  Copyright (c) 2015 es.uji. All rights reserved.
//
import Foundation
import Firebase


class Nota : Hashable, Equatable {
    

    //Atributos
    
    var titulo : String
    var contenido : String
    let fechaCreacion : NSDate
    var fechaModificacion : NSDate
    var hashValue: Int {
        var miHash : Int = 1
        miHash = 17 * (titulo.characters.count) + fechaCreacion.hash
        return miHash
    }

    
    //Constructor
    
    init() {
        self.titulo = String()
        self.contenido = String()
        self.fechaCreacion = NSDate()
        self.fechaModificacion = NSDate()
    }
    init(titulo : String, contenido : String) {
        self.titulo = titulo
        self.contenido = contenido
        self.fechaCreacion = NSDate()
        self.fechaModificacion = NSDate()
        

    }
    
    //Método
    func description() -> String {
        return "Título : " +  "\(titulo)" + " \n Contenido: \(contenido)" + "Fecha Creación: \(fechaCreacion)"
    }
    
}
//Fuera de la clase
func ==(lhs: Nota, rhs: Nota) -> Bool {
    
    return lhs.contenido == rhs.contenido && lhs.titulo == rhs.titulo
}
//Curiosidad
//    func swapTwoInts(inout a: Int, inout _ b: Int) {
//        let temporaryA = a
//        a = b
//        b = temporaryA
//    }






