//
//  AnyDayGuest.swift
//  iOS AmusementParkPass
//
//  Created by Woodchuck on 8/22/18.
//  Copyright © 2018 Treehouse Island. All rights reserved.
//

import Foundation




enum AreaAccess {
    
    case Kitchen
    case MaintenanceArea
    case AmusementPark
    case Office
    case RideControl
    
}

enum RideAccess {
    case AllRides
    case SkipAllLines
    
}

enum DiscountAccess {
    case Food
    case Merchandise
}


enum ParkPersonType {
    case VIPGuest
    case ClassicGuest
    case ChildGuest
    case RideService
    case Maintenance
    case FoodService
    case ShiftManager
    
}


protocol AnyDayGuest {
    var hasParkPass: Bool? { get }
    
    var parkAccessType: ParkPersonType { get }
    var accessArea: [AreaAccess] { get }
    var accessRides: [RideAccess] { get }
    var availableDiscounts: [DiscountAccess: Double] { get }
    
    var Birthday: String? { get }
    var isChild: Bool? { get }
}




class ClassicGuest: AnyDayGuest {
    
    let parkAccessType: ParkPersonType = .ClassicGuest
    
    var hasParkPass: Bool? = true
    
    var accessRides: [RideAccess] = [.AllRides]
    
    var accessArea: [AreaAccess] = [.AmusementPark]
    
    var availableDiscounts: [DiscountAccess : Double] = [.Food: 0, .Merchandise: 0]
    
    var Birthday: String? = nil
    
    var isChild: Bool? = false
}


class VIPGuest: AnyDayGuest {
    
    let parkAccessType: ParkPersonType = .VIPGuest
    
    var hasParkPass: Bool? = true
    
    var accessRides: [RideAccess] = [.AllRides, .SkipAllLines]
    
    var accessArea: [AreaAccess] = [.AmusementPark]
    
    var availableDiscounts: [DiscountAccess: Double] = [.Food: 10, .Merchandise: 20]
    
    var Birthday: String? = nil
    
    var isChild: Bool? = false
}


class ChildGuest: AnyDayGuest {
    
    let parkAccessType: ParkPersonType = .ChildGuest
    
    var hasParkPass: Bool? = true
    var isChild: Bool?
    
    var accessRides: [RideAccess] = [.AllRides]
    
    var accessArea: [AreaAccess] = [.AmusementPark]
    
    var availableDiscounts: [DiscountAccess : Double] = [.Food: 0, .Merchandise: 0]
    
    var Birthday: String?
    
    init?(Birthday: String?) throws {
        
        guard let Birthday = Birthday else {
            
            print("Missing Date of Birth Information")
            throw RequiredInformation.DateOfBirthMissing
        }
        
        self.Birthday = Birthday
    }
    
    
    func childsAge(birthday: String) -> Int {
        
        let dateComposition = DateFormatter()
        dateComposition.dateFormat = "MM/dd/yyyy"
        let birthdayDate = dateComposition.date(from: birthday)
        let calendar: NSCalendar! = NSCalendar(calendarIdentifier: .gregorian)
        let presentDay = Date()
        let childsAge = calendar.components(.year, from: birthdayDate!, to: presentDay, options: [])
        let age = childsAge.year
        
        return age!
    }
    
    
    func childsAgeVerification() {
        if (childsAge(birthday: Birthday!)) <= 5 {
            isChild = true
            print("Child Pass Created Successfully")
        } else {
            isChild = false
            print("Invalid Age Requirements for Child Pass. CHild must be 5 or under to qualify")
        }
        
    }
    
}





