//
//  Nota.swift
//  Nota
//
//  Created by Albert Jiménez Fuentes on 26/7/15.
//  Copyright (c) 2015 es.uji. All rights reserved.
//
import Foundation
//import Firebase


public class Nota : Hashable, Equatable {
    
    
    let URL_FB : String = "https://swiftnoteapp.firebaseio.com"
   // let miFirebase : Firebase = Firebase(url: "https://swiftnoteapp.firebaseio.com")
    
    //Atributos
    var titulo : String
    var contenido : String
    let fechaCreacion : NSDate
    var fechaModificacion : NSDate
    public var hashValue: Int {
        return 3278*23
    }

    
    //Constructor
    
   public init() {
        self.titulo = ""
        self.contenido = ""
        self.fechaCreacion = NSDate()
        self.fechaModificacion = NSDate()
    }
  public  init(titulo : String, contenido : String) {
        self.titulo = titulo
        self.contenido = contenido
        self.fechaCreacion = NSDate()
        self.fechaModificacion = NSDate()
        

    }
    
    //Método
   public func description() -> String {
        return "Título : " +  "\(titulo)" + " \n Contenido: \(contenido)" + "Fecha Creación: \(fechaCreacion)"
    }
    
    public func getTitulo() -> String {
        return self.titulo
    }
    
    
}

public func ==(lhs: Nota, rhs: Nota) -> Bool {
    
    return lhs.contenido == rhs.contenido && lhs.titulo == rhs.titulo
}



