//
//  ResultViewController.swift
//  slideshow
//
//  Created by 伊藤倫 on 2020/05/31.
//  Copyright © 2020 michi.ito. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var imageView2: UIView!
    @IBOutlet weak var imageView3: UIImageView!
    
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView3.image = image
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
