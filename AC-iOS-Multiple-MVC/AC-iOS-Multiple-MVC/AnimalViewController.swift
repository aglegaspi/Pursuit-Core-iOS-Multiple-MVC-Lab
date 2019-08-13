//
//  AnimalViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Alexander George Legaspi on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    var animal: ZooAnimal!
    
    @IBOutlet weak var animalVCImage: UIImageView!
    @IBOutlet weak var animalVCName: UILabel!
    
    @IBOutlet weak var animalVCOrigin: UILabel!
    @IBOutlet weak var animalVCClassification: UILabel!
    @IBOutlet weak var animalVCTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalVCName.text = animal.name
        animalVCOrigin.text = animal.origin
        animalVCImage.image = UIImage(named: String(animal.imageNumber))
        animalVCClassification.text = animal.classification
        animalVCTextView.text = animal.info
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
