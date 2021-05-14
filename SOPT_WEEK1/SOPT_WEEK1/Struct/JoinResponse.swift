//
//  JoinResponse.swift
//  SOPT_WEEK1
//
//  Created by Yi Joon Choi on 2021/05/14.
//

import Foundation

struct JoinResponse: Decodable {
    var success: Bool
    var message: String
    var data: JoinResult?
}

struct JoinResult: Decodable {
    var nickname: String
}
