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


let today = Date()
let calendar = Calendar.current
let hour = calendar.component(.hour, from: today)
let minute = calendar.component(.minute, from: today)
let second = calendar.component(.second, from: today)

let statsdata: [ValuePerCategory] = [
    .init(category: "A", value: 5),
    .init(category: "B", value: 9),
    .init(category: "C", value: 7)
]


struct goals{
    var ProductName:String
    var price:String
    var image:UIImage
}


var goalsarray: [goals] = []
//let users = [Users(id: UUID(), name: "Akshat", age: 21, progress: 45, moneySaved: 56)]


var reward = [rewards(points: "3000 points", money: "$5 Saved"),rewards(points: "5000 points", money: "$10 Saved")]

var videos = ["https://www.youtube.com/results?search_query=yoga","https://www.youtube.com/results?search_query=workout","https://www.youtube.com/results?search_query=zumba","https://www.youtube.com/results?search_query=breath+exercise","https://www.youtube.com/results?search_query=cardio","https://www.youtube.com/watch?v=FYJJbwG_i8U"]

var smokingSuggestion = ["https://www.cdc.gov/tobacco/data_statistics/fact_sheets/health_effects/effects_cig_smoking/index.htm#:~:text=Smoking%20causes%20about%2090%25%20(or,of%20all%20lung%20cancer%20deaths.&text=More%20women%20die%20from%20lung%20cancer%20each%20year%20than%20from%20breast%20cancer.&text=Smoking%20causes%20about%2080%25%20(or,obstructive%20pulmonary%20disease%20(COPD).&text=Cigarette%20smoking%20increases%20risk%20for,causes%20in%20men%20and%20women."]


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
    var userName:String?
    let age:String?
    var year:String?
    let price:String?
    var cigcount:String?
}

var userdata = [onboarding]()

