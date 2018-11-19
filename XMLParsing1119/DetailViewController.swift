//
//  DetailViewController.swift
//  XMLParsing1119
//
//  Created by 503-12 on 19/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblSummary: UILabel!
    var book : Book!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.text = book.title
        lblAuthor.text = book.author
        lblSummary.text = book.summary
        
        self.title = book.title

       
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
