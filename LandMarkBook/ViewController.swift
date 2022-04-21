//
//  ViewController.swift
//  LandMarkBook
//
//  Created by macOS on 17.04.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var landMarkNames = [String()]
    var landMarkImage = [UIImage()]
    var choseLandmarkİmage = UIImage()
    var choseLandMarkName  = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        landMarkNames.append("cinseddi")
        landMarkNames.append("Eyfel")
        landMarkNames.append("mahmure")
        landMarkNames.append("tachmahal")
        
        landMarkImage.append(UIImage(named: "cinseddi.jpg")!)
        landMarkImage.append(UIImage(named: "Eyfel.jpg")!)
        landMarkImage.append(UIImage(named: "mahmure.jpg")!)
        landMarkImage.append(UIImage(named: "tachmahal.jpg")!)
        
        navigationItem.title = "Dünyanın 4 harikası"
        
         }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            landMarkNames.remove(at: indexPath.row)
            landMarkImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landMarkNames[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landMarkNames.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choseLandmarkİmage = landMarkImage[indexPath.row]
        choseLandMarkName  = landMarkNames[indexPath.row]
        
        performSegue(withIdentifier: "toImageViewController", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController" {
            let destinationCV = segue.destination as! imageViewController
            
            destinationCV.selectedLandmarkİmage = choseLandmarkİmage
            destinationCV.selectedLandmarkName  = choseLandMarkName
            
            
        }
    }
    


}

