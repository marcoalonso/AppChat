//
//  ViewController.swift
//  Login
//
//  Created by marco rodriguez on 19/05/21.
//

import UIKit
import CLTypingLabel

class ViewController: UIViewController {

    @IBOutlet weak var mensajeBienvendiaLebel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mensajeBienvendiaLebel.charInterval = 0.05
        
        mensajeBienvendiaLebel.text = "Hola bienvenidos a la app oficial del Intituto Tecnologico de Morelia, puedes iniciar sesion o registrarte con tu correo institucional."
    
        
    }


}

