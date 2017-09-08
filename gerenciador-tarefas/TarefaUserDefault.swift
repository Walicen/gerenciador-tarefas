//
//  TarefaUserDefault.swift
//  gerenciador-tarefas
//
//  Created by Walicen Dalazuana on 20/08/17.
//  Copyright © 2017 Walicen Dalazuana. All rights reserved.
//

import UIKit

class TarefaUserDefaults{
    
    let TASK_KEY = "chave5"
    var tasks:Array<String> = []
    
    func saveTask(tarefa: String){
        
        tasks = listTasks()
        
        tasks.append(tarefa)
        UserDefaults.standard.set(tasks, forKey: TASK_KEY)
    }
    
    func listTasks() -> Array<String>{
        
        let dados = UserDefaults.standard.object(forKey: TASK_KEY)
        if dados != nil{
            return dados as! Array<String>
        }else{
            return []
        }
        
        

    }
    
    func removeTask(indice: Int){
        //UserDefaults.standard.removeObject(forKey: String)
        tasks = listTasks()
        tasks.remove(at: indice)
        UserDefaults.standard.set(tasks, forKey: TASK_KEY)
    }
    
}
