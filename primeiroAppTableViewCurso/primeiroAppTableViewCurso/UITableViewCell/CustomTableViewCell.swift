//
//  CustomTableViewCell.swift
//  primeiroAppTableViewCurso
//
//  Created by Jefferson Alves on 15/02/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var TitleLabel: UILabel!
    
// MARK: criando uma identificacao do tipo constante estatica para parar chib
    static let indentifier: String = "CustomTableViewCell"
    
//MARK: a nib é uma referencia para identificar qual é o nosso arquivo da chib
    static func nib() -> UINib {
        return UINib(nibName: self.indentifier, bundle: nil)
    }
    
// MARK: Inicializando class passando uma string para elemento TitleLabel
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
// MARK: Criando funcao passando valor 
    func setupCell(title: String) {
        TitleLabel.text = title
    }
    
}
