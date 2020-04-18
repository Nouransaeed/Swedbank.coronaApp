//
//  HomeTableViewController.swift
//  Swedbank
//
//  Created by Noura saeed on 3/19/20.
//  Copyright © 2020 Noura saeed. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {

    override func viewDidLoad() {
    
        super.viewDidLoad()
        
        // change image of back and remove text back

        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        let yourBackImage = UIImage(named: "delete")
        self.navigationController?.navigationBar.backIndicatorImage = yourBackImage
    self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = yourBackImage

        
        // to make shadow bottom of navigation
        
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOpacity = 0.3
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 6.0)
        self.navigationController?.navigationBar.layer.shadowRadius = 2
   
    }
    
    // when view appear hide navigation
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    // when view disappear make navigation appear

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    // MARK: - Table view data source
    
    
    // when SelectRow in table 

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 1 {
            
            let VC = storyboard?.instantiateViewController(withIdentifier: "ViewController") as!  ViewController
            VC.title = "Symtom"
            self.navigationController?.pushViewController(VC, animated: true)
            
            
        }
        else if indexPath.row == 2{
            let VC = storyboard?.instantiateViewController(withIdentifier: "smittarViewController") as! ViewController
            VC.title = "Sä smittar Covid+19"
            self.navigationController?.pushViewController(VC, animated: true)
        }
        else if indexPath.row == 3{
            let VC = storyboard?.instantiateViewController(withIdentifier: "BehandingViewController") as! ViewController
            VC.title = "Behanding"
            self.navigationController?.pushViewController(VC, animated: true)
        }
        else if indexPath.row == 4{
            let VC = storyboard?.instantiateViewController(withIdentifier: "NärViewController") as! ViewController
            VC.title = "När uppsäger jag värd?"
            self.navigationController?.pushViewController(VC, animated: true)
        }
        else if indexPath.row == 5{
            let VC = storyboard?.instantiateViewController(withIdentifier: "JobbaViewController") as! ViewController
            VC.title = "Jobba hemifrän"
            self.navigationController?.pushViewController(VC, animated: true)
        }
        else if indexPath.row == 6{
                 let VC = storyboard?.instantiateViewController(withIdentifier: "FysiskaViewController") as! ViewController
                 VC.title = "Fysiska event"
                 self.navigationController?.pushViewController(VC, animated: true)
             }
        else if indexPath.row == 7{
            let VC = storyboard?.instantiateViewController(withIdentifier: "AllmänViewController") as! ViewController
            VC.title = "Allmän FAQ"
            self.navigationController?.pushViewController(VC, animated: true)
        }
        else if indexPath.row == 8{
                  let VC = storyboard?.instantiateViewController(withIdentifier: "ViktigaViewController") as! ViewController
                  VC.title = "Viktiga länkar"
                  self.navigationController?.pushViewController(VC, animated: true)
              }
        
        
        
    }

   
}
