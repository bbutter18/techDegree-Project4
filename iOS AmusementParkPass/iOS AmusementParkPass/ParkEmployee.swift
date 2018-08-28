//
//  ParkEmployee.swift
//  iOS AmusementParkPass
//
//  Created by Woodchuck on 8/20/18.
//  Copyright © 2018 Treehouse Island. All rights reserved.
//

import Foundation


protocol Employable {
   
    var firstName: String? { get }
    var lastName: String? { get }
    var address: String? { get }
    var city: String? { get }
    var state: String? { get }
    var zipcode: Int? { get }
    
    var employeeType: ParkPersonType { get }
    
    var hasEmployeeBadge: Bool? { get }
    var accessArea: [AreaAccess] { get }
    var accessRides: [RideAccess] { get }
    var availableDiscounts: [DiscountAccess: Double] { get }
}


enum RequiredInformation: Error {
    case FirstNameMissing
    case LastNameMissing
    case AddressMissing
    case CityMissing
    case StateMissing
    case ZipcodeMissing
    case DateOfBirthMissing

}


class FoodService: Employable {
    
    var hasEmployeeBadge: Bool? = true
    let employeeType: ParkPersonType = .FoodService
    var accessArea: [AreaAccess] = [.AmusementPark, .Kitchen]
    var accessRides: [RideAccess] = [.AllRides]

    var firstName: String?
    var lastName: String?
    
    var address: String?
    var city: String?
    var state: String?
    var zipcode: Int?
    
    init?(firstName: String?, lastName: String?, address: String?, city: String?, state: String?, zipcode: Int?) throws {
        
        
        guard let firstName = firstName else {
            print("Missing First Name")
            throw RequiredInformation.FirstNameMissing
        }
        
        guard let lastName = lastName else {
            print("Missing Last Name")
            throw RequiredInformation.LastNameMissing
        }
        
        guard let address = address else {
            print("Missing Address Information")
            throw RequiredInformation.AddressMissing
        }
        
        guard let city = city else {
            print("Missing City Information")
            throw RequiredInformation.CityMissing
        }
        
        guard let state = state else {
            print("Missing State Information")
            throw RequiredInformation.StateMissing
        }
        
        guard let zipcode = zipcode else {
            print("Missing Zipcode Information")
            throw RequiredInformation.ZipcodeMissing
        }
        
        
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.state = state
        self.zipcode = zipcode
    }
    
    
    func discountsAvailable(item: DiscountAccess) -> Double {
        
        switch item {
        case .Food: return 15.0
        case .Merchandise: return 25.0
        }
    }
    
    let availableDiscounts: [DiscountAccess : Double] = [.Food : 15, .Merchandise : 25]
}


class Maintenance: Employable {

    var hasEmployeeBadge: Bool? = true
    let employeeType: ParkPersonType = .Maintenance
    var accessArea: [AreaAccess] = [.AmusementPark, .Kitchen, .RideControl, .MaintenanceArea]
    var accessRides: [RideAccess] = [.AllRides]
    
    var firstName: String?
    var lastName: String?
    
    var address: String?
    var city: String?
    var state: String?
    var zipcode: Int?
    
    init?(firstName: String?, lastName: String?, address: String?, city: String?, state: String?, zipcode: Int?) throws {
        
        
        guard let firstName = firstName else {
            throw RequiredInformation.FirstNameMissing
        }
        
        guard let lastName = lastName else {
            throw RequiredInformation.LastNameMissing
        }
        
        guard let address = address else {
            throw RequiredInformation.AddressMissing
        }
        
        guard let city = city else {
            throw RequiredInformation.CityMissing
        }
        
        guard let state = state else {
            throw RequiredInformation.StateMissing
        }
        
        guard let zipcode = zipcode else {
            throw RequiredInformation.ZipcodeMissing
        }
        
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.state = state
        self.zipcode = zipcode
    }
    
    func discountsAvailable(item: DiscountAccess) -> Double {
    
        switch item {
        case .Food: return 15.0
        case .Merchandise: return 25.0
        }
    }
    
    let availableDiscounts: [DiscountAccess : Double] = [.Food: 15, .Merchandise: 25]
}



class RideService: Employable {

    var hasEmployeeBadge: Bool? = true
    let employeeType: ParkPersonType = .RideService
    var accessArea: [AreaAccess] = [.AmusementPark, .RideControl]
    var accessRides: [RideAccess] = [.AllRides]
    
    var firstName: String?
    var lastName: String?
    
    var address: String?
    var city: String?
    var state: String?
    var zipcode: Int?
    
    init?(firstName: String?, lastName: String?, address: String?, city: String?, state: String?, zipcode: Int?) throws {
        
        guard let firstName = firstName else {
            throw RequiredInformation.FirstNameMissing
        }
        
        guard let lastName = lastName else {
            throw RequiredInformation.LastNameMissing
        }
        
        guard let address = address else {
            throw RequiredInformation.AddressMissing
        }
        
        guard let city = city else {
            throw RequiredInformation.CityMissing
        }
        
        guard let state = state else {
            throw RequiredInformation.StateMissing
        }
        
        guard let zipcode = zipcode else {
            throw RequiredInformation.ZipcodeMissing
        }
        
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.state = state
        self.zipcode = zipcode
    }
    
    func discountsAvailable(item: DiscountAccess) -> Double {
        
        switch item {
        case .Food: return 15.0
        case .Merchandise: return 25.0
        }
    }
    
    let availableDiscounts: [DiscountAccess : Double] = [.Food: 15, .Merchandise: 25]


}


class ShiftManager: Employable {
    
    var hasEmployeeBadge: Bool? = true
    let employeeType: ParkPersonType = .ShiftManager
    var accessArea: [AreaAccess] = [.AmusementPark, .RideControl, .Kitchen, .MaintenanceArea, .Office]
    var accessRides: [RideAccess] = [.AllRides]
    
    var firstName: String?
    var lastName: String?
    
    var address: String?
    var city: String?
    var state: String?
    var zipcode: Int?
    
    init?(firstName: String?, lastName: String?, address: String?, city: String?, state: String?, zipcode: Int?) throws {
        
        guard let firstName = firstName else {
            throw RequiredInformation.FirstNameMissing
        }
        
        guard let lastName = lastName else {
            throw RequiredInformation.LastNameMissing
        }
        
        guard let address = address else {
            throw RequiredInformation.AddressMissing
        }
        
        guard let city = city else {
            throw RequiredInformation.CityMissing
        }
        
        guard let state = state else {
            throw RequiredInformation.StateMissing
        }
        
        guard let zipcode = zipcode else {
            throw RequiredInformation.ZipcodeMissing
        }
        
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.state = state
        self.zipcode = zipcode
    }
    
    func discountsAvailable(item: DiscountAccess) -> Double {
        
        switch item {
        case .Food: return 25.0
        case .Merchandise: return 25.0
        }
    }
    
    let availableDiscounts: [DiscountAccess : Double] = [.Food: 25, .Merchandise: 25]
    
    
}






