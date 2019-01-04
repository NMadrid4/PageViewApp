//
//  ViewController3.swift
//  PageViewApp
//
//  Created by Melanie on 1/4/19.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var heightConstant: NSLayoutConstraint!
    @IBOutlet weak var statsTableView: UITableView!
    var data = [1,2,3,4,5,6,7,8,9,10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        heightConstant.constant = heightConstant.constant + CGFloat(data.count*80)-statsTableView.frame.size.height
        
    }

}

extension ViewController3: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(data[indexPath.row])"
        return cell
    }
    
    
}
