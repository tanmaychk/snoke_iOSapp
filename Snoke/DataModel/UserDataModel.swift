//
//  UserDataModel.swift
//  Snoke
//
//  Created by Akshat Naruka on 07/03/23.
//

import Foundation
import UIKit

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

struct Stats: Identifiable {
    var type: String
    var count: Double
    var id = UUID()
}

var data: [Stats] = [
    .init(type: "Monday", count: 5),
    .init(type: "Tuesday", count: 4),
    .init(type: "Wednesday", count: 4),
    .init(type: "Thursday", count: 3),
    .init(type: "Friday", count: 2),
    .init(type: "Saturday", count: 3),
    .init(type: "Sunday", count: 4)
]

struct ValuePerCategory {
    var category: String
    var value: Double
}


let statsdata: [ValuePerCategory] = [
    .init(category: "A", value: 5),
    .init(category: "B", value: 9),
    .init(category: "C", value: 7)
]


let users = [Users(id: UUID(), name: "Akshat", age: 21, progress: 45, moneySaved: 56),Users(id: UUID(), name: "Tanmay", age: 20, progress: 78, moneySaved: 90)]


let reward = [rewards(points: "3000 points", money: "$5 Saved"),rewards(points: "5000 points", money: "$10 Saved")]



struct ExerciseSlide{
    let title: String
    let description: String
    let image: UIImage
}


struct Model{
    let imageName:String
    
    init(imageName: String) {
        self.imageName = imageName
    }
}


struct onboarding{
    let name:String?
    let age:String?
    var freq:String?
    let price:String?
    var cigcount:String?
}

var userdata = [onboarding]()
