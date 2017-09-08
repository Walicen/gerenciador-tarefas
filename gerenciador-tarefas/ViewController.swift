//
//  ViewController.swift
//  gerenciador-tarefas
//
//  Created by Walicen Dalazuana on 19/08/17.
//  Copyright © 2017 Walicen Dalazuana. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    let taskUser = TarefaUserDefaults()
    var tasks: [String]=[]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = taskUser.listTasks()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tasks = taskUser.listTasks()
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            taskUser.removeTask(indice: indexPath.row)
            tasks = taskUser.listTasks()
            tableView.reloadData()
        }else if editingStyle == .insert{
            print("TESTE")
        }
    }

}

