//
//  Photo.swift
//  Photos
//
//  Created by Gene Yoo on 11/3/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import Foundation

class Photo {
    /* The number of likes the photo has. */
    var likes : Int!
    /* The string of the url to the photo file. */
    var url : String!
    /* The username of the photographer. */
    var username : String!
    /* Date */
    var date : String!
    /* Is liked */
    var isLiked : Bool!

    /* Parses a NSDictionary and creates a photo object. */
    init (data: NSDictionary) {
        // FILL ME IN
        // HINT: use nested .valueForKey() calls, and then cast using 'as! TYPE'
        self.likes = data.valueForKey("likes")?.valueForKey("count") as! Int
        self.url = data.valueForKey("images")?.valueForKey("thumbnail")?.valueForKey("url") as! String
        self.username = data.valueForKey("user")?.valueForKey("username") as! String
        let format = NSDateFormatter()
        format.timeStyle = .ShortStyle
        format.dateStyle = .MediumStyle
        self.date = format.stringFromDate(NSDate(timeIntervalSince1970: Double(data.valueForKey("created_time") as! String)!))
        self.isLiked = false
    }

}