/**
 *
 *   Copyright (c) 2018 Aspose.PDF Cloud
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */

import Foundation
import Alamofire

open class AuthAspose {
    
    public class func checkAuth(completion: @escaping ((_ error: AuthError?) -> Void )) {
        
        if (AsposePdfCloudAPI.accessToken == nil) {
            
            guard let appSid = AsposePdfCloudAPI.appSid else {
                completion(AuthError.credentialsNotSetError)
                return
            }
            
            guard let appKey = AsposePdfCloudAPI.appKey else {
                completion(AuthError.credentialsNotSetError)
                return
            }
            
            let path = "/oauth2/token"
            let urlString = AsposePdfCloudAPI.basePath.replacingOccurrences(of: "/v1.1", with: "") + path
            
            let parameters: [String: Any] = [
                "grant_type": "client_credentials",
                "client_id": appSid,
                "client_secret": appKey]
            
            let headers: [String: String] = [
                "Content-Type": "application/x-www-form-urlencoded"
            ]
            
            Alamofire.request(urlString, method: .post, parameters: parameters, headers: headers).responseJSON {
                
                responseJSON in
                
                guard let statusCode = responseJSON.response?.statusCode else {
                    completion(AuthError.authError)
                    return
                }
                guard let jsonArray = responseJSON.result.value as? [String: Any] else {
                    completion(AuthError.authError)
                    return
                }
                
                if (HttpStatusCode.ok.rawValue == statusCode) {
                    AsposePdfCloudAPI.accessToken = jsonArray["access_token"] as? String
                    AsposePdfCloudAPI.refreshToken = jsonArray["refresh_token"] as? String
                    completion(nil)
                    
                } else if (HttpStatusCode.unauthorized.rawValue == statusCode) {
                    completion(AuthError.unauthorizedError)
                }
                else {
                    completion(AuthError.authError)
                }
            }
        }
        else
        {
            completion(nil)
        }
    }
    
    public enum AuthError: Error {
        case credentialsNotSetError
        case unauthorizedError
        case authError
    }
}

