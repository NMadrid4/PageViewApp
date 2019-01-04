import UIKit
import XLPagerTabStrip

class PageViewController: ButtonBarPagerTabStripViewController {

    @IBOutlet weak var menuButtonBarView: ButtonBarView!
    var message: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDesign()
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let child_1 = storyboard?.instantiateViewController(withIdentifier: "vc1")
        let child_2 = storyboard?.instantiateViewController(withIdentifier: "vc2") as! ViewController2
        child_2.messageFromView = message ?? "..."
        return [child_1!, child_2]
    }
    
    func loadDesign() {
//        self.settings.style.selectedBarHeight = 1
        self.settings.style.selectedBarBackgroundColor = UIColor.black
        self.settings.style.buttonBarBackgroundColor  = .clear
        self.settings.style.selectedBarBackgroundColor = .white
        self.settings.style.buttonBarItemTitleColor = .black
        self.settings.style.buttonBarItemsShouldFillAvailableWidth = true
        self.settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 12)
        self.settings.style.buttonBarItemLeftRightMargin = 8
        self.settings.style.buttonBarItemBackgroundColor = .clear
        self.buttonBarView.backgroundColor = .clear
    
    }
    
    
}
