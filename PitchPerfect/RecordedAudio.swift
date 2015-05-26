//
//  RecodredAudio.swift
//  PitchPerfect
//
//  Created by jmatt on 5/25/15.
//  Copyright (c) 2015 JMattaliano. All rights reserved.
//

import Foundation

class RecordedAudio: NSObject {
    
    var filePathUrl:NSURL!
    var title:String!
    
    override init()
    {
         let dirPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as! String
        
        let currentDateTime = NSDate()
        let formatter = NSDateFormatter()
        formatter.dateFormat = "ddMMyyyy-HHmmss"
        
        let recordingName = formatter.stringFromDate(currentDateTime)+".wav"
        let pathArray = [dirPath, recordingName]
        filePathUrl = NSURL.fileURLWithPathComponents(pathArray)
        println(filePathUrl)

    }
}