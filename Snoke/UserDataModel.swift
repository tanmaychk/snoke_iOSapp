//
//  UserDataModel.swift
//  Snoke
//
//  Created by Akshat Naruka on 07/03/23.
//

import Foundation

struct Users{
    var id:UUID
    var name:String
    var age:Int
    var progress:Int
    var moneySaved:Int
}


struct rewards{
    var points:String
    var money:String
}

//
//class UserDataModel{
//    private var users:[Users]
//    init(){
//        _ = [Users(id: <#UUID#>, name: "Akshat", age: 21, progress: 45, moneySaved: 56),Users(id: <#UUID#>, name: "Tanmay", age: 20, progress: 78, moneySaved: 90)]
//    }
//    func getname()->[Users]{
//        return users
//    }
//}

let users = [Users(id: UUID(), name: "Akshat", age: 21, progress: 45, moneySaved: 56),Users(id: UUID(), name: "Tanmay", age: 20, progress: 78, moneySaved: 90)]


let reward = [rewards(points: "3000 points", money: "$5 Saved"),rewards(points: "5000 points", money: "$10 Saved")]
