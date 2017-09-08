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

        // Do any additional setup after loading the view.
        print(tarefaUserDefault.listTasks())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

 
    @IBAction func addTask() {
        
        
        if let tarefaTransient = taskDescription.text{
            
            tarefaUserDefault.saveTask(tarefa: tarefaTransient)
            taskDescription.text = ""
        }
        navigationController?.popToRootViewController(animated: true)
    }
}
