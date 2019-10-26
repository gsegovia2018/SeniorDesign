//
//  ViewController.swift
//  SeniorDesign
//
//  Created by Guillermo Segovia Marcos on 10/21/19.
//  Copyright © 2019 Guillermo Segovia. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    //VideoCode
    //var videoPlayer:AVPlayer?
    //var videoPlayerLayer:AVPlayerLayer?

    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()
        assignbackground()
    }
    
    func assignbackground(){
        let background = UIImage(named: "drive&ShareBack.png")

        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.redraw
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    //VideoCode
    /*override func viewWillAppear(_ animated: Bool) {
        //Set up video in the background
        setUpVideo()
    }*/
    
    
    
    func setUpElements(){
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHollowButton(loginButton)
    }
    //VideoCode
    /*func setUpVideo(){
        //Get the path to the resource in the bundle
        let bundlePath = Bundle.main.path(forResource: "loginbg", ofType: "mov")
        
        guard bundlePath != nil else{
            return
        }
        //Create a URL from it
        let url = URL(fileURLWithPath: bundlePath!)
        
        //Create the video player item
        let item = AVPlayerItem(url: url)
        
        //Create the player
        videoPlayer = AVPlayer(playerItem: item)
        
        //Create the layer
        videoPlayerLayer = AVPlayerLayer(player:videoPlayer)
        
        //Adjust the size and frame
        videoPlayerLayer?.frame = CGRect(x:-self.view.frame.size.width*1.5, y:0, width: self.view.frame.size.width*4, height: self.view.frame.size.height)
        view.layer.insertSublayer(videoPlayerLayer!, at: 0)
        
        //Add it to the view and play it
        videoPlayer?.playImmediately(atRate:1)
    }*/
}

