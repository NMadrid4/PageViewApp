//
//  ViewController2.swift
//  PageViewApp
//
//  Created by Melanie on 12/14/18.
//

import UIKit
import XLPagerTabStrip

class ViewController2: UIViewController {

    @IBOutlet weak var viewConstant: NSLayoutConstraint!
    @IBOutlet weak var testTableView: UITableView!
    @IBOutlet weak var message: UILabel!
    
    var messageFromView: String?
    var data = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,19]

    override func viewDidLoad() {
        super.viewDidLoad()
        StaticViewcontroller2.viewcontroller = self
        if let messageFromView = messageFromView {
            self.message.text = messageFromView
        }
        self.testTableView.tableFooterView = UIView()
    }
    override func viewDidLayoutSubviews() {
        viewConstant.constant = viewConstant.constant + CGFloat(self.data.count*70) - self.testTableView.frame.size.height
        let vc = StaticDetailViewController.viewController
        vc?.increaseHeightOfView(viewConstant.constant, 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let vc = StaticDetailViewController.viewController
        vc?.decreaseHeight(398)
    }
}

extension ViewController2: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(data[indexPath.row])"
        return cell
    }
}

extension ViewController2: IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "Reviews y comentarios")
    }
    
}

class StaticViewcontroller2 {
    static var viewcontroller: ViewController2? = nil
}
