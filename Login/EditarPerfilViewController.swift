//
//  EditarPerfilViewController.swift
//  Login
//
//  Created by marco rodriguez on 31/05/21.
//

import UIKit

class EditarPerfilViewController: UIViewController {

    @IBOutlet weak var nombreEditarTF: UITextField!
    @IBOutlet weak var imagenPerfil: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func tomarFotoButton(_ sender: UIBarButtonItem) {
        print("Elegir foto o tomar 1")
    }
    
    @IBAction func GuardarPerfilButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        print("Perfil Actualizado!")
    }
    
}
