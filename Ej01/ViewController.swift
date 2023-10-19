//
//  ViewController.swift
//  Ej01
//
//  Created by MarcosHernandez on 05/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbUser: UILabel!
    @IBOutlet weak var lbComputer: UILabel!
    var aleatorio: Int!
    var cuentaUsuario: Int = 0
    var cuentaMaquina: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    fileprivate func ponerImagenRandom() {
        aleatorio = Int.random(in: 0..<3)
        switch aleatorio {
        case 0:
            img.image = UIImage(named: "papel")
        case 1:
            img.image = UIImage(named: "piedra")
        case 2:
            img.image = UIImage(named: "tijera")
        default:
            print("Tonto el que lo lea")
        }
    }
    
    @IBAction func btnPincharPapel(_ sender: Any) {
        ponerImagenRandom()
        if  aleatorio == 0  {
            //EMPATE
        }else{
            if aleatorio == 1 {
                cuentaUsuario += 1
                lbUser.text = String(cuentaUsuario)
            }else{
                if aleatorio == 2{
                    cuentaMaquina += 1
                    lbComputer.text = String(cuentaMaquina)
                }
            }
        }
    }
    
    
    @IBAction func btnPincharPiedra(_ sender: Any) {
        ponerImagenRandom()
        if  aleatorio == 0  {
            cuentaMaquina += 1
            lbComputer.text = String(cuentaMaquina)
        }else{
            if aleatorio == 1 {
                //EMPATE
            }else{
                if aleatorio == 2{
                    cuentaUsuario += 1
                    lbUser.text = String(cuentaUsuario)
                }
            }
        }
        
    }
    
    
    @IBAction func btnPincharTijera(_ sender: Any) {
        ponerImagenRandom()
        if  aleatorio == 0  {
            cuentaUsuario += 1
            lbUser.text = String(cuentaUsuario)
        }else{
            if aleatorio == 1 {
                cuentaMaquina += 1
                lbComputer.text = String(cuentaMaquina)
            }else{
                if aleatorio == 2{
                    //EMPATE
                }
            }
        }
    }
}
