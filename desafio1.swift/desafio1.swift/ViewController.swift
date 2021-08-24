//
//  ViewController.swift
//  desafio1.swift
//
//  Created by Pedro Almeida on 09/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ShowAlert(_ sender: Any) {
        self.createAlert()
    }
    func createAlert(){
        let alert = UIAlertController(title: "errado", message: "Você escolheu o caminho errado amigo", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Repetir alert", style: UIAlertAction.Style.default, handler: { ACTION in
            print("ok")
            self.createAlert()
        }))
        alert.addAction(UIAlertAction(title: "Cancelar", style: UIAlertAction.Style.cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)

    }
    
    @IBAction func changeView(_ sender: Any) {
        self.instantiateView()
    }
    func instantiateView() {
        let desafio1ViewController =  desafio1ViewController(nibName: nil, bundle: nil)
        self.navigationController?.pushViewController(desafio1ViewController, animated: true)
    }
}

