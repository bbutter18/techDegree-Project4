//
//  SwipePass.swift
//  iOS AmusementParkPass
//
//  Created by Woodchuck on 8/23/18.
//  Copyright © 2018 Treehouse Island. All rights reserved.
//

import Foundation






    
    func swipeEmployeeAccess(employee: Employable, accessTo: AreaAccess) {
    
        if employee.hasEmployeeBadge == true {
    
    if employee.employeeType == .FoodService && accessTo.self == .AmusementPark || employee.employeeType == .FoodService && accessTo.self == .Kitchen {
        print("Access Granted")
    } else if employee.employeeType == .Maintenance && accessTo.self == .AmusementPark || employee.employeeType == .Maintenance && accessTo.self == .MaintenanceArea || employee.employeeType == .Maintenance && accessTo.self == .RideControl || employee.employeeType == .Maintenance && accessTo.self == .Kitchen {
        print("Acess Granted")
    } else if employee.employeeType == .RideService && accessTo.self == .RideControl || employee.employeeType == .RideService && accessTo.self == .AmusementPark {
        print("Access Granted")
    } else if employee.employeeType == .ShiftManager && accessTo.self == .AmusementPark || employee.employeeType == .ShiftManager && accessTo.self == .Office || employee.employeeType == .ShiftManager && accessTo.self == .MaintenanceArea || employee.employeeType == .ShiftManager && accessTo.self == .Kitchen || employee.employeeType == .ShiftManager && accessTo.self == .RideControl {
        print("Acess Granted")
        
    } else {
        print("Access Denied. Invalid Credentials")
        
        
            }
        }
    
    }
    
    
    func swipeEmployeeDiscount(for Employee: Employable) {
        
        let discounts = Employee.availableDiscounts
        
        for(key, value) in discounts {
            print("\(key) is discounted at \(value)% Off Total Price")
        }
    }
    
    
    func swipeEmployeeRideAccess(employee: Employable) {
        if employee.hasEmployeeBadge == true {
            print("Access Granted. Enjoy the Ride.")
        } else {
            print("Pass not activated yet")
        }
    }
    




    func swipeGuestAccess(guest: AnyDayGuest, accessTo: AreaAccess) {
    
        if guest.hasParkPass == true {
        
            if guest.parkAccessType == .ClassicGuest && [accessTo] == guest.accessArea {
                print("Access Granted")
            } else if guest.parkAccessType == .VIPGuest && [accessTo] == guest.accessArea {
                print("Access Granted")
            } else if guest.parkAccessType == .ChildGuest && [accessTo] == guest.accessArea {
                print("Access Granted")
            } else {
                print("Access Denied. Invalid Credentials")
            }
        }
    }
    
    func swipeGuestDiscount(for Guest: AnyDayGuest) {
        
        let discounts = Guest.availableDiscounts
        
        for(key, value) in discounts {
            print("\(key) is discounted at \(value)% Off Total Price")
        }
    }

    
    func swipeGuestRideAccess(for Guest: AnyDayGuest) {
    
        if Guest.hasParkPass == true {
            print("Access Granted. Enjoy the Ride.")
        } else {
            print("Pass not activated yet")
        }
    }
    
    func swipeGuestSkipRideLines(for Guest: AnyDayGuest) {
        
        if Guest.hasParkPass == true {
            if Guest.parkAccessType == .VIPGuest {
                print("Access Granted. You may jump to the front of the line")
            } else {
                print("Sorry, you do not have the credentials to skip the line. Please upgrade to a VIP Pass!")
            }
        }
    }
    
    func swipeCheckForChildAdmission(for Guest: AnyDayGuest) {
        
        if Guest.isChild == true {
            print("Access Granted. You are allowed Free Admission")
        } else {
            print("Sorry, but this pass does not qualify for free Child Admssion to the Park")
        }
    }
        
    
    




