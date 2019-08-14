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
        switch section {
        case 0:
            return ZooAnimal.mammals.count
        case 1:
            return ZooAnimal.reptiles.count
        case 2:
            return ZooAnimal.birds.count
        case 3:
            return ZooAnimal.insects.count
        default:
            return 0
        }
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section{
        case 0:
            return "Mammals"
        case 1:
            return "Reptiles"
        case 2:
            return "Birds"
        case 3:
            return "Insects"
        default:
            return "It's something"
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = animalTableView.dequeueReusableCell(withIdentifier: "animalCell") as? AnimalTableViewCell {
            switch indexPath.section {
            case 0:
                let mammal = ZooAnimal.mammals[indexPath.row]
                cell.animalName.text = mammal.name
                cell.animalOrigin.text = mammal.origin
                cell.animalClassification.text = mammal.classification
                cell.animalImage.image = UIImage(named: String(mammal.imageNumber))
                return cell
                
            case 1:
                let reptile = ZooAnimal.reptiles[indexPath.row]
                cell.animalName.text = reptile.name
                cell.animalOrigin.text = reptile.origin
                cell.animalClassification.text = reptile.classification
                cell.animalImage.image = UIImage(named: String(reptile.imageNumber))
                return cell
            case 2:
                let bird = ZooAnimal.birds[indexPath.row]
                cell.animalName.text = bird.name
                cell.animalOrigin.text = bird.origin
                cell.animalClassification.text = bird.classification
                cell.animalImage.image = UIImage(named: String(bird.imageNumber))
                return cell
                
            case 3:
                let insect = ZooAnimal.insects[indexPath.row]
                cell.animalName.text = insect.name
                cell.animalOrigin.text = insect.origin
                cell.animalClassification.text = insect.classification
                cell.animalImage.image = UIImage(named: String(insect.imageNumber))
                return cell
                
            default:
                break
            }
        }
        
        return UITableViewCell()
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let segueIdentifier = segue.identifier else { fatalError("No identifier on segue") }
        
        switch segueIdentifier {
            
        case "animalDetail":
            guard let animalDetail = segue.destination as? AnimalViewController else {
                fatalError("Unexpected segue VC")
            }
            guard let selectedIndexPath = animalTableView.indexPathForSelectedRow else {
                fatalError("No row was selected")
            }
            animalDetail.animal = zooAnimals[selectedIndexPath.row]
        default:
            fatalError("Unexpected segue identifier")
        }
    }
    
}

