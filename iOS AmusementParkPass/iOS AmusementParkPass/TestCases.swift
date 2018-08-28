//
//  TestCases.swift
//  iOS AmusementParkPass
//
//  Created by Woodchuck on 8/28/18.
//  Copyright © 2018 Treehouse Island. All rights reserved.
//

import Foundation

//Employee Test Cases

var person1 = try! FoodService(firstName: "Benjamin", lastName: "Manning", address: "1234 West Street", city: "San Francisco", state: "CA", zipcode: 97112)
var person2 = try! Maintenance(firstName: "Steven", lastName: "Berg", address: "2345 South Street", city: "Cupertino", state: "AZ", zipcode: 12394)
var person3 = try! ShiftManager(firstName: "Wendell", lastName: "Tyler", address: "1235 Ancient Row", city: "New York", state: "CT", zipcode: 47482)
var person4 = try! RideService(firstName: "Abra", lastName: "Kadabra", address: "2347 North Pole", city: "Santa Clause", state: "Indiana", zipcode: 23494)


//Employee Access

//let swipe1 = swipeEmployeeAccess(employee: person1!, accessTo: .AmusementPark)
//let swipe2 = swipeEmployeeAccess(employee: person2!, accessTo: .Kitchen)
//let swipe3 = swipeEmployeeAccess(employee: person3!, accessTo: .MaintenanceArea)
//let swipe4 = swipeEmployeeAccess(employee: person4!, accessTo: .Office)


//Employee Discount

//let swipeD1 = swipeEmployeeDiscount(for: person1!)
//let swipeD2 = swipeEmployeeDiscount(for: person2!)
//let swipeD3 = swipeEmployeeDiscount(for: person3!)
//let swipeD4 = swipeEmployeeDiscount(for: person4!)

//Employee Ride Access

//let swipeR1 = swipeEmployeeRideAccess(employee: person1!)
//let swipeR2 = swipeEmployeeRideAccess(employee: person2!)
//let swipeR3 = swipeEmployeeRideAccess(employee: person3!)
//let swipeR4 = swipeEmployeeRideAccess(employee: person4!)



//Guests Test Case

var guest1 = ClassicGuest()
var guest2 = VIPGuest()
var guest3 = try! ChildGuest(Birthday: "02/12/2016")


//Guest Access

//let guestA1 = swipeGuestAccess(guest: guest1, accessTo: .AmusementPark)
//let guestA2 = swipeGuestAccess(guest: guest2, accessTo: .Kitchen)
//let guestA3 = swipeGuestAccess(guest: guest3!, accessTo: .Office)

//Guest Discount

//let guestD1 = swipeGuestRideAccess(for: guest1)
//let guestD2 = swipeGuestRideAccess(for: guest2)
//let guestD3 = swipeGuestRideAccess(for: guest3!)

//Guest Skip Lines

//let skip1 = swipeGuestSkipRideLines(for: guest1)
//let skip2 = swipeGuestSkipRideLines(for: guest2)
//let skip3 = swipeGuestSkipRideLines(for: guest3!)

//Guest Child Checker

//let guestC1 = swipeCheckForChildAdmission(for: guest1)
//let guestC2 = swipeCheckForChildAdmission(for: guest2)
//let guestC3 = swipeCheckForChildAdmission(for: guest3!)















