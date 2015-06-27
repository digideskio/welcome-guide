//
//  GuideProfilViewController.swift
//  
//
//  Created by Philip Heinser on 27.06.15.
//
//

import UIKit

class GuideProfilViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let makeRequstButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Reply, target: self, action: "showRequest")
        self.navigationItem.rightBarButtonItem = makeRequstButton
        self.title = "Marcel"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showRequest() {
        
        self.performSegueWithIdentifier("Show Request", sender: nil)
    }
    
    @IBAction func unwindToGuideViewController(segue: UIStoryboardSegue) {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
