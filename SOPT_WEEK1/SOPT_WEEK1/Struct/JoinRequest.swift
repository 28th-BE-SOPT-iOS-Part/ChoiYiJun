//
//  JoinRequest.swift
//  SOPT_WEEK1
//
//  Created by Yi Joon Choi on 2021/05/14.
//

import Foundation
struct JoinRequest : Encodable
{
    var email : String
    var password : String
    var sex : String
    var nickname : String
    var phone : String
    var birth : String
}
