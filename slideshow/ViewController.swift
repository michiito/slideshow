//
//  ViewController.swift
//  slideshow
//
//  Created by 伊藤倫 on 2020/05/26.
//  Copyright © 2020 michi.ito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var UIImageView: UIImageView!
    @IBOutlet weak var backImage: UIButton!
    @IBOutlet weak var nextImage: UIButton!
    
    var imageIndex = 0
    
    var tapCount = 1
    
    var timer: Timer!
  
    
    let images = [UIImage(named: "umi1.jpeg"),UIImage(named: "umi2.jpeg"),UIImage(named: "umi3.jpeg")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let imageView = images[0]
        
        UIImageView.image = imageView
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    @IBAction func backImage(_ sender: Any) {
        if imageIndex == 0{
            imageIndex = 2
        }else{
            imageIndex -= 1
        }
        UIImageView.image = images[imageIndex]
    }
    @IBAction func nextImage(_ sender: Any) {
        if imageIndex == 2{
            imageIndex = 0
        }else{
            imageIndex += 1
        }
        UIImageView.image = images[imageIndex]
    }
    @objc func onTimer(_ timer: Timer){
        if imageIndex == 2{
            imageIndex = 0
        }else{
            imageIndex += 1
        }
        UIImageView.image = images[imageIndex]
    }
    @IBAction func startStop(_ sender: Any) {
        
        tapCount += 1
        
        if tapCount % 2 == 0{
            self.timer=Timer.scheduledTimer(timeInterval: 2,target: self,selector: #selector(onTimer(_:)),userInfo: nil, repeats: true)
            
            backImage.isHidden = true
            nextImage.isHidden = true

        
    }else{
            self.timer.invalidate()
            
            backImage.isHidden = false
            nextImage.isHidden = false
        
    }
       
    
    

}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        resultViewController.image = images[imageIndex]
        
}
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
   

}

