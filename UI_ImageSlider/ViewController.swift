//
//  ViewController.swift
//  UI_ImageSlider
//
//  Created by COE-030 on 13/09/19.
//  Copyright © 2019 COe. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var NextHide: UIButton!
    
    @IBOutlet weak var PreviousHide: UIButton!
    
    
    var Image = 0
    @IBAction func Previous(_ sender: Any)
    {
        Image -= 1
        Label.text = String("\(Image)")
        self.ImageGallery()
        
    }
    
    @IBAction func Next(_ sender: Any)
    {
        Image += 1
        Label.text = String("\(Image)")
        self.ImageGallery()
    }
    
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        Image = 1
        Label.text = String("\(Image)")
    }

        
        // Do any additional setup after loading the view, typically from a nib
    
    func ImageGallery()
    {
        
        if Image == 1
        {
            PreviousHide.isEnabled = false
            imageView.image = UIImage(named: "background1.jpeg")
        }
        
        if Image == 2
        {
            PreviousHide.isEnabled = true
            imageView.image = UIImage(named: "background2.jpeg")
        }
        
        if Image == 3
        {
            PreviousHide.isEnabled = true
            imageView.image = UIImage(named: "background3.jpeg")
        }
        
        if Image == 4
        {
            NextHide.isEnabled = true
            imageView.image = UIImage(named: "background4.jpeg")
        }
        
        if Image == 5
        {
            NextHide.isEnabled = false
            imageView.image = UIImage(named: "background5.jpeg")
        }
        
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




