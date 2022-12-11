//
//  ChatViewController.swift
//  MessagingApp
//
//  Created by Carrington Tafadzwa Manyuchi on 2022/12/10.
//

import UIKit
import Foundation
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class ChatViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var messages: [Message] = [
        
        Message(sender: "carrington@gmail.com", body: "Hey"),
        Message(sender: "a@b.com", body: "Hello"),
        Message(sender: "carrington@gmail.com", body: "What's up?")
        
    
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        title = K.appName
        navigationItem.hidesBackButton = true
    }
    @IBAction func logoutPressed(_ sender: UIBarButtonItem) {
        let firebaseAuth = Auth.auth()
    do {
      try firebaseAuth.signOut()
        navigationController?.popToRootViewController(animated: true)
    } catch let signOutError as NSError {
      print("Error signing out: %@", signOutError)
    }
      
    }
}

extension ChatViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
        
        cell.textLabel?.text = messages[indexPath.row].body
        
        return cell
    }
    
    
}



