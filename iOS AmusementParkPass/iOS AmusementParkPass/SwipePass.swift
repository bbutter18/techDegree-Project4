//
//  SwipePass.swift
//  iOS AmusementParkPass
//
//  Created by Woodchuck on 8/23/18.
//  Copyright © 2018 Treehouse Island. All rights reserved.
//

import Foundation


class EmployeeBadge {
    var Employee: Employable
    
    
    init(Employee: Employable){
        self.Employee = Employee
        
    }

    
    func employeeAccess(employee: Employable, accessTo: AreaAccess) {
    
        if Employee.hasEmployeeBadge == true {
    
    if Employee.employeeType == .FoodService && [accessTo] == Employee.accessArea || Employee.employeeType == .FoodService && [accessTo] == Employee.accessArea {
        print("Access Granted")
    } else if Employee.employeeType == .Maintenance && [accessTo] == Employee.accessArea || Employee.employeeType == .Maintenance && [accessTo] == Employee.accessArea || Employee.employeeType == .Maintenance && [accessTo] == Employee.accessArea  || Employee.employeeType == .Maintenance && [accessTo] == Employee.accessArea {
        print("Acess Granted")
    } else if Employee.employeeType == .RideService && [accessTo] == Employee.accessArea || Employee.employeeType == .RideService && [accessTo] == Employee.accessArea {
        print("Access Granted")
    } else if Employee.employeeType == .ShiftManager && [accessTo] == Employee.accessArea || Employee.employeeType == .ShiftManager && [accessTo] == Employee.accessArea || Employee.employeeType == .ShiftManager && [accessTo] == Employee.accessArea || Employee.employeeType == .ShiftManager && [accessTo] == Employee.accessArea || Employee.employeeType == .ShiftManager && [accessTo] == Employee.accessArea {
        print("Acess Granted")
        
    } else {
        print("Access Denied. Invalid Credentials")
        
        
            }
        }
    
    }
    
    
    func employeeDiscount(forEmployee: Employable) {
        
        let discounts = Employee.availableDiscounts
        
        for(key, value) in discounts {
            print("\(key) is discounted at \(value)% Off Total Price")
        }
    }
    
    
    func employeeRideAccess(employee: Employable) {
        if Employee.hasEmployeeBadge == true {
            print("Access Granted. Enjoy the Ride.")
        } else {
            print("Pass not activated yet")
        }
    }
    
}


class guestParkPass {

    var Guest: AnyDayGuest
    
    init(Guest: AnyDayGuest) {
        self.Guest = Guest
    }

    func guestAccess(guest: AnyDayGuest, accessTo: AreaAccess) {
    
        if Guest.hasParkPass == true {
        
            if Guest.parkAccessType == .ClassicGuest && [accessTo] == Guest.accessArea {
                print("Access Granted")
            } else if Guest.parkAccessType == .VIPGuest && [accessTo] == Guest.accessArea {
                print("Access Granted")
            } else if Guest.parkAccessType == .ChildGuest && [accessTo] == Guest.accessArea {
                print("Access Granted")
            } else {
                print("Access Denied. Invalid Credentials")
            }
        }
    }
    
    func guestDiscount(forGuest: AnyDayGuest) {
        
        let discounts = Guest.availableDiscounts
        
        for(key, value) in discounts {
            print("\(key) is discounted at \(value)% Off Total Price")
        }
    }

    
    func guestRideAccess(forGuest: AnyDayGuest) {
    
        if Guest.hasParkPass == true {
            print("Access Granted. Enjoy the Ride.")
        } else {
            print("Pass not activated yet")
        }
    }
    
    func guestSkipRideLines(forGuest: AnyDayGuest) {
        
        if Guest.hasParkPass == true {
            if Guest.parkAccessType == .VIPGuest {
                print("Access Granted. You may jump to the front of the line")
            } else {
                print("Sorry, you do not have the credentials to skip the line. Please upgrade to a VIP Pass!")
            }
        }
    }
    
    func checkForChildAdmission(forGuest: AnyDayGuest) {
        
        if Guest.isChild == true {
            print("Access Granted. You are allowed Free Admission")
        } else {
            print("Sorry, but this pass does not qualify for free Child Admssion to the Park")
        }
    }
        
    
    
    
    
}

