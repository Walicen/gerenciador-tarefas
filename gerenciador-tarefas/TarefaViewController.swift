//
//  TarefaViewController.swift
//  gerenciador-tarefas
//
//  Created by Walicen Dalazuana on 20/08/17.
//  Copyright © 2017 Walicen Dalazuana. All rights reserved.
//

import UIKit

class TarefaViewController: UIViewController {

    @IBOutlet weak var taskDescription: UITextField!
    
    let tarefaUserDefault = TarefaUserDefaults()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .done, target: self, action: #selector(self.addTask))
        
        print(tarefaUserDefault.listTasks())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
 
    @objc func addTask() {
        if let tarefaTransient = taskDescription.text {
            
            tarefaUserDefault.saveTask(tarefa: tarefaTransient)
            taskDescription.text?.removeAll()
        }
        navigationController?.popToRootViewController(animated: true)
    }
}
