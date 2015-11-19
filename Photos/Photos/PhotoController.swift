//
//  PhotoController.swift
//  Photos
//
//  Created by Mac on 11/18/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import UIKit

class PhotoController: UIViewController {
    var data : Photo!
    @IBOutlet weak var like: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var liked: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        like.text = "likes: " + String(data.likes)
        date.text = "date: " + data.date
        name.text = "name: " + data.username
        if let p = NSData(contentsOfURL: NSURL(string: data!.url)!) {
            photo.image = UIImage(data: p)
        }
    }
    
    @IBAction func like(sender: UIButton) {
        data.isLiked = !data.isLiked
        if data.isLiked == false {
            liked.image = UIImage(named: "unlike.png")
        } else {
            liked.image = UIImage(named: "like.png")
        }
    }
    
}