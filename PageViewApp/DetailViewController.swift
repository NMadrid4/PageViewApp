//
//  DetailViewController.swift
//  PageViewApp
//
//  Created by Melanie on 1/3/19.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var mainViewHeightConstant: NSLayoutConstraint!
    @IBOutlet weak var pageViewHeightConstant: NSLayoutConstraint!
    @IBOutlet weak var pageViewContainer: UIView!
    
    var pageViewHeight: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        StaticDetailViewController.viewController = self
        pageViewHeight = pageViewHeightConstant.constant
        print(pageViewContainer.frame.size.height)
    }
    
    func increaseHeightOfView(_ newHeight: CGFloat, _ totalCount: Int) {
        pageViewHeightConstant.constant = newHeight
        mainViewHeightConstant.constant = newHeight - 398
        print(mainViewHeightConstant.constant)
     }
    
    func decreaseHeight(_ height: CGFloat) {
        mainViewHeightConstant.constant =  0
        pageViewHeightConstant.constant = height
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "mySegue") {
            let childViewController = segue.destination as! PageViewController
            childViewController.message = "asdasd"
        }
    }
    
}

class StaticDetailViewController {
    static var viewController: DetailViewController? = nil
}
