//
//  ViewController.swift
//  primeiroAppTableViewCurso
//
//  Created by Jefferson Alves on 15/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    var listaName: [String] = ["Jefferson","Daiany","Davi","Arthur","Théo"]

    @IBOutlet var tableView: UITableView!
    
// MARK: chamando a funcao configTableView para inicialiar os protocolos delegate e dataSource
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
    }

// MARK: - configurando tableView passando responsabildade de start dos protocolos para viewControle
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.indentifier)
    }
}

// MARK: - Criando extension UITableViewDelegate - É responsavel por gerenciar as interacoes do usuario com a tableView, UITableViewDataSource - É responsavel por cuidar dos dados para popular na tableView
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
// MARK: criando uma constante para passar Identifier "as?" serve para informa que a constante é agora é do tipo CustomTableViewCell tambem
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.indentifier, for: indexPath) as? CustomTableViewCell
        
        cell?.setupCell(title: listaName[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
//MARK: capturando item da lista que foi selecionado
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("O nome selecionado foi: \(listaName[indexPath.row])")
    }
//MARK: aumentando espesura da celula para 120
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

}
