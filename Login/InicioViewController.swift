//
//  InicioViewController.swift
//  Login
//
//  Created by marco rodriguez on 26/05/21.
//

import UIKit
import Firebase

class InicioViewController: UIViewController {
    
    var chats = [Mensaje]()
    
    //Agregar la referencia a la BD Firestore
    let db = Firestore.firestore()
    

    @IBOutlet weak var mensajeEnviarTF: UITextField!
    @IBOutlet weak var tablaChats: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //ocultar el boton de regresar
        navigationItem.hidesBackButton = true
    }
    
    @IBAction func enviarButton(_ sender: UIButton) {
        if let mensaje = mensajeEnviarTF.text, let remitente = Auth.auth().currentUser?.email {
            db.collection("mensajes").addDocument(data: ["remitente": remitente, "mensaje": mensaje]) { (error) in
                //si hubo errro
                if let e = error {
                    print("Error al guardar en Firestore \(e.localizedDescription)")
                } else {
                    //Se realizo la insersion a firestore
                    print("Se guardo la info en firestore")
                    self.mensajeEnviarTF.text = ""
                }
            }
        }
    }
    
    
    
    @IBAction func salirButton(_ sender: UIBarButtonItem) {
        let firebaseAuth = Auth.auth()
    do {
      try firebaseAuth.signOut()
        print("Cerro sesion correctamente!")
        navigationController?.popToRootViewController(animated: true)
    } catch let error as NSError {
        print ("Error al cerrar sesion\(error.localizedDescription)")
    }
        
        
      
    }
    
    

}

//MARK: - Uitable View Methods
extension InicioViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tablaChats.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        celda.textLabel?.text = chats[indexPath.row].cuerpoMsj
        celda.detailTextLabel?.text = chats[indexPath.row].remitente
        return celda
    }
    
    
}
