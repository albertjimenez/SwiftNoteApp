//
//  ViewController.swift
//  Nota
//
//  Created by Albert Jiménez Fuentes on 25/7/15.
//  Copyright (c) 2015 es.uji. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let workItem = DispatchWorkItem.init(qos: .userInitiated, flags: .assignCurrentContext ){
            
            let gestor:GestionNotas = GestionNotas()
            let nota:Nota = Nota(titulo: "un titulo", contenido: "un contenido")
            //gestor.firebaseAddNota(unaNota: nota)
            gestor.firebaseAdd(cadena: nota.description())
            
        }
        DispatchQueue.global().async(execute: workItem)
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var busqueda: UISearchBar!

    @IBOutlet var tabla: UITableView!
    
    
    
    
    
    //funcion de busqueda
    
    
}

