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
    
    public class func checkAuth(completion: @escaping (() -> Void)) {
        
        if (nil == AsposePdfCloudAPI.accessToken) {

            let path = "/oauth2/token"
            let urlString = AsposePdfCloudAPI.basePath.replacingOccurrences(of: "/v1.1", with: "") + path
            
            let parameters: [String: Any]? = [
                "grant_type": "client_credentials",
                "client_id": AsposePdfCloudAPI.appSid!,
                "client_secret": AsposePdfCloudAPI.appKey!]
            
            let headers: [String: String] = [
                "Content-Type": "application/x-www-form-urlencoded"
            ]
            
            Alamofire.request(urlString, method: .post, parameters: parameters, headers: headers).responseJSON {
                responseJSON in
                
                guard let statusCode = responseJSON.response?.statusCode else { return }
                guard let jsonArray = responseJSON.result.value as? [String: Any] else { return }
                
                print("statusCode: ", statusCode)
                
                if (200..<300).contains(statusCode) {
                    let value = responseJSON.result.value
                    
                    AsposePdfCloudAPI.accessToken = jsonArray["access_token"] as? String
                    completion()
                    
                    //print("value: ", value ?? "nil")
                    
                } else {
                    //print("error")
                }
            }
        }
        else
        {
            //completion()
        }
    }
    
    
    public func auth() -> Int{
        
        print("simple=========================================")
        
        request("http://jsonplaceholder.typicode.com/posts").responseData{
            response in print("Hello world")
        }
        //print("viewDidLoad ended")
        
        print("begin=========================================")
        
        AsposePdfCloudAPI.appSid = ""
        AsposePdfCloudAPI.appKey = ""
        let baseUrl = "https://api-dev.aspose.cloud/v1.1"
        let path = "/oauth2/token"
        let urlString = baseUrl.replacingOccurrences(of: "/v1.1", with: "") + path
        //let url = NSURLComponents(string: urlString)
        
        //let urlRequest = URLRequest(url: URL(string: urlString)!)
        //urlRequest.url
        
        let parameters: [String: Any]? = [
            "grant_type": "client_credentials",
            "client_id": AsposePdfCloudAPI.appSid!,
            "client_secret": AsposePdfCloudAPI.appKey!]
    
        let headers: [String: String] = [
            "Content-Type": "application/x-www-form-urlencoded"
        ]
        var stCode = 0
        Alamofire.request(urlString, method: .post, parameters: parameters, headers: headers).responseJSON {
            responseJSON in
            
            guard let statusCode = responseJSON.response?.statusCode else { return }
            stCode = statusCode
            print("statusCode: ", statusCode)
            
            if (200..<300).contains(statusCode) {
                let value = responseJSON.result.value
                print("value: ", value ?? "nil")
            } else {
                print("error")
            }
        }
        
        
        //Alamofire.request(url: urlRequest, method: HTTPMethod.post, parameters: parameters, encoding: nil, headers: headers)
        
        /*
        Alamofire.request("https://httpbin.org/get").response{ response in
            print("Response: \(describing: response.response)")
            
        }*/
        
        print("end=========================================")
        return 200
    }
}

