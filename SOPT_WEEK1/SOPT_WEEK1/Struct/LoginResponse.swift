//
//  LoginResponse.swift
//  SOPT_WEEK1
//
//  Created by Yi Joon Choi on 2021/05/14.
//

import Foundation

struct LoginResponse: Decodable { 
    var success: Bool
    var message: String
    var result: LogInResult?
}
 
struct LogInResult: Decodable {
    var userId: Int
    var user_nickname: String
    var token: String
}
