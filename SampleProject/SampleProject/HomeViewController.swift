//
//  HomeViewController.swift
//  SampleProject
//
//  Created by Prince Yadav on 01/07/21.
//  Copyright © 2021 Prince Yadav. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var genereTypeTableView: UITableView!
    var genereTypes:[String] = ["Action", "Classics", "Comic", "Fantasy", "Historic", "Horror", "Mystery", "Romance", "Science", "Thrillers",]
    override func viewDidLoad() {
        super.viewDidLoad()
        genereTypeTableView.tableFooterView = UIView()
        self.title = "Genere Type"

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showGenere" {
            if let indexPath = self.genereTypeTableView.indexPathForSelectedRow {
                let controller = segue.destination as! GenereViewController
                controller.genereSelected = genereTypes[indexPath.row]
            }
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text=""
        cell.detailTextLabel?.text = ""
        cell.imageView?.image = UIImage(named: genereTypes[indexPath.row])
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genereTypes.count-2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(genereTypes[indexPath.row])
        self.performSegue(withIdentifier: "showGenere", sender: self)
    }


}
