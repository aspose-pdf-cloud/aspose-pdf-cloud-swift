//
//  AuthAspose.swift
//  AsposePdfCloud
//
//  Created by Kaferi Andrey on 23.06.2018.
//  Copyright © 2018 Aspose. All rights reserved.
//

import UIKit
import Alamofire

open class AuthAspose {
    
    public func auth() -> Int{
        
        print("begin=========================================")
        
        Alamofire.request("https://httpbin.org/get").response{ response in
            print("Response: \(describing: response.response)")
            
        }
        
        print("end=========================================")
        return 200
    }
}
