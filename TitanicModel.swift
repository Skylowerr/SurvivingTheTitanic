//
//  TitanicModel.swift
//  Titanic
//
//  Created by Emirhan Gökçe on 23.08.2025.
//

import Foundation

struct TitanicModel: Identifiable {
    let id = UUID()
    
    var passengerClass : String
    var sex: String
    var age: Double
    var siblingsSpouses: Double
    var parentsChildren: Double
    var fare: Double
    var port: String
    
    //ENUM yapısıyla nasıl yapıldıgına bak
    static let passengerClasses = [
        "First Class",
        "Second Class",
        "Third Class",
    ]
    /*
    enum PassengerClass: String, CaseIterable {
        case first = "First Class"
        case second = "Second Class"
        case third = "Third Class"
    }
     */
    
    static let ports = [
        "Cherbourg",
        "Queenstown",
        "Southampton",
    ]
    
    static let genders = ["Male", "Female"]
    
    var Pclass: Int64 {
        switch passengerClass {
        case "First Class":
            return 1
        case "Second Class":
            return 2
        case "Third Class":
            return 3
        default:
            return 0
        }
    }
    
    
    
}
