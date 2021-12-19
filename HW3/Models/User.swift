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
    
    static func getUser() -> User {
       // User(userName: "User", password: "password", person: Person.getPerson())
        User(userName: "1", password: "1", person: Person.getPerson())
    }
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
               resume: "jbkjbslkjr d;vj;izv s;ozivh;oixhv d;ofvihfoibh kjfbnjkdnbf; bodifboidnfb ;oizdhbfoixb oidbx;oifnb oifb;oxinb knlkdnsglknsdkljgkdjsbfgkjbdfksjgbkfjbgkjdbfgkjskj g;snklgjs fg;kfsjngjksdfg dflkjg;fkdhjg fg;jsdfng;lkf;s gfs;gn;lskfng dfg;lsfkg;lkfng fd;gn;dflkg fg;fkln;l",
               task: "111jbkjbslkjr d;vj;izv s;ozivh;oixhv d;ofvihfoibh kjfbnjkdnbf; bodifboidnfb ;oizdhbfoixb oidbx;oifnb oifb;oxinb knlkdnsglknsdkljgkdjsbfgkjbdfksjgbkfjbgkjdbfgkjskj g;snklgjs fg;kfsjngjksdfg dflkjg;fkdhjg fg;jsdfng;lkf;s gfs;gn;lskfng dfg;lsfkg;lkfng fd;gn;dflkg fg;fkln;l",
               team: "222jbkjbslkjr d;vj;izv s;ozivh;oixhv d;ofvihfoibh kjfbnjkdnbf; bodifboidnfb ;oizdhbfoixb oidbx;oifnb oifb;oxinb knlkdnsglknsdkljgkdjsbfgkjbdfksjgbkfjbgkjdbfgkjskj g;snklgjs fg;kfsjngjksdfg dflkjg;fkdhjg fg;jsdfng;lkf;s gfs;gn;lskfng dfg;lsfkg;lkfng fd;gn;dflkg fg;fkln;l"
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
