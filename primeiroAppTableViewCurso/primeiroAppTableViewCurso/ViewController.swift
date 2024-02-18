//
//  ViewController.swift
//  primeiroAppTableViewCurso
//
//  Created by Jefferson Alves on 15/02/24.
//

import UIKit

class ViewController: UIViewController {

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
        return 80
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
// MARK: criando uma constante para passar Identifier "as?" serve para informa que a constante é do tipo CustomTableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.indentifier, for: indexPath) as? CustomTableViewCell
        
        return cell ?? UITableViewCell()
    }
}
