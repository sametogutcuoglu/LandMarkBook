//
//  imageViewController.swift
//  LandMarkBook
//
//  Created by macOS on 17.04.2022.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLandmarkİmage = UIImage()
    var selectedLandmarkName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = selectedLandmarkName
        imageView.image = selectedLandmarkİmage
    
    }
    



}
