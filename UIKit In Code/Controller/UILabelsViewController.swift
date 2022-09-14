//
//  UILabelsViewController.swift
//  UIKit In Code
//
//  Created by Javier Cueto on 14/09/22.
//

import UIKit

final class UILabelsViewController: UIViewController {
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello World 🌎"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.red.cgColor
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
        label.widthAnchor.constraint(equalToConstant: 250).isActive = true
        label.backgroundColor = .purple
        label.textAlignment = .center
        label.layer.cornerRadius = 10
        label.layer.masksToBounds = true
        label.textColor = .white
        return label
    }()
    
    private  let myLabel2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "El Lorem Ipsum fue concebido como un texto de relleno, formateado de una cierta manera para permitir la presentación de elementos gráficos en documentos, sin necesidad de una copia formal. El uso de Lorem Ipsum permite a los diseñadores reunir los diseños y la forma del contenido antes de que el contenido se haya creado, dando al diseño y al proceso de producción más libertad."
        label.numberOfLines = 0
        return label
    }()
    
    private  let myLabel3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello universe 🌞"
        label.font = UIFont.systemFont(ofSize: 40, weight: .light)
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configUI()
    }
    
    private func configUI() {
        view.addSubview(myLabel)
        myLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(myLabel2)
        myLabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myLabel2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        myLabel2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        myLabel2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        
        
        view.addSubview(myLabel3)
        myLabel3.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        myLabel3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
    }
    
}
