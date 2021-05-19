//
//  ViewController.swift
//  Login
//
//  Created by marco rodriguez on 19/05/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensajeBienvendiaLebel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mensajeBienvendiaLebel.text = ""
        
        var indice = 0.0
        
        let tituloLabel = "Hola bienvenidos a la app oficial del Intituto Tecnologico de Morelia, puedes iniciar sesion o registrarte con tu correo institucional."
        
        for letra in tituloLabel {
            print("-")
            print(0.1 * indice)
            print(letra)
            
            Timer.scheduledTimer(withTimeInterval: 0.1 * indice, repeats: false) { (timer) in
                self.mensajeBienvendiaLebel.text?.append(letra)
            }
            indice += 1
        }
        
    }


}

