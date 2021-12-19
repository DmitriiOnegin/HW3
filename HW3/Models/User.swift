//
//  User.swift
//  HW3
//
//  Created by Dmitrii Onegin on 19.12.2021.
//

import Foundation

struct User {
    let userName: String
    let password: String
    let person: Person
}

struct Person {
    let firstName: String
    let lastName: String
    let age: Int
    let resume: String
    let task: String
    let team: String
    
    static func getPerson() -> Person {
        Person(firstName: "Дмитрий",
               lastName: "Онегин",
               age: 34,
               resume: "Описание",
               task: "Задача",
               team: "Команда"
        )
    }
}

//extension Person {
//    enum Description: String {
//        case resume = "Описание"
//        case task = "Задача"
//        case team = "Команда"
//
//        var textDescription: String {
//            switch self {
//            case .resume:
//                return "resume"
//            case .task:
//                return "task"
//            case .team:
//                return "team"
//            }
//        }
//    }
//}
