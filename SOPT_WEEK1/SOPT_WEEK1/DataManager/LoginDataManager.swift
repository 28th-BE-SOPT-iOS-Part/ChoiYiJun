//
//  LoginDataManager.swift
//  SOPT_WEEK1
//
//  Created by Yi Joon Choi on 2021/05/14.
//

import Foundation
import Alamofire

class LoginDataManager {
    
    static func login(_ parameters: LoginRequest, viewController: ViewController) {
        AF.request(Constants.loginURL, method: .post, parameters: parameters, encoder: JSONParameterEncoder(), headers: nil)
            .validate()
            .responseDecodable(of: LoginResponse.self) { response in
                switch response.result {
                case .success(let response):
                    if response.success{
                        print(response.message)
                        viewController.didSuccessSignIn(result: response) 
                    } else {
                        viewController.failedToRequest(message: response.message)
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                    viewController.failedToRequest(message: "서버와의 연결이 원활하지 않습니다")
                }
            }
    }
}
