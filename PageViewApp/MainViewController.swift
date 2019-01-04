//
//  MainViewController.swift
//  PageViewApp
//
//  Created by Melanie on 1/3/19.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextViewAction(_ sender: Any) {
        let detailVc = storyboard?.instantiateViewController(withIdentifier: "detVC")
        let descriptionVc = storyboard?.instantiateViewController(withIdentifier: "vc2") as! ViewController2
        descriptionVc.messageFromView = "holalhasdas"
        if let child =  detailVc?.children.last as? PageViewController {
            print("asdasdsda")
            child.message = "asdasdasd"
        }
        self.navigationController?.pushViewController(detailVc!, animated: true)
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
