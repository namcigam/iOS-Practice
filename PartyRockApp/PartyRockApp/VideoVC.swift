//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Michael Brewer on 3/20/17.
//  Copyright © 2017 Michael Brewer. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLBL: UILabel!
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLBL.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: <#T##URL?#>)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
