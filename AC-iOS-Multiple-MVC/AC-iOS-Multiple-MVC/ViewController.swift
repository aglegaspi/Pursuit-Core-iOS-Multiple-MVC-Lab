//
//  ViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Tom Seymour on 11/2/17.
//  Copyright © 2017 AC-iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let zooAnimals = ZooAnimal.zooAnimals
    
    @IBOutlet weak var animalTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return zooAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let zooAnimal = zooAnimals[indexPath.row]
        
        if let cell = animalTableView.dequeueReusableCell(withIdentifier: "animalCell") as? AnimalTableViewCell {
            
            cell.animalName.text = zooAnimal.name
            cell.animalOrigin.text = zooAnimal.origin
            cell.animalClassification.text = zooAnimal.classification
            cell.animalImage.image = UIImage(named: String(zooAnimal.imageNumber))
            
            return cell
            
        } else {
            return UITableViewCell()
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalTableView.dataSource = self
        animalTableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    
}

