//
//  JZCalendarEvent.swift
//  JZCalendarWeekView
//
//  Created by Omar Allaham on 11/23/20.
//  Copyright © 2020 Jeff Zhang. All rights reserved.
//

import Foundation

public protocol JZCalendarEvent: NSCopying {
    
    /// The stable identity of the entity associated with this instance.
    var eventID: String { get }
    
    var startDate: Date { get }
    var endDate: Date { get }
    
    var isAllDay: Bool { get }
    
    // If a event crosses two days, it should be devided into two events but with different intraStartDate and intraEndDate
    // eg. startDate = 2018.03.29 14:00 endDate = 2018.03.30 03:00, then two events should be generated: 1. 0329 14:00 - 23:59(IntraEnd) 2. 0330 00:00(IntraStart) - 03:00
    var intraStartDate: Date { get set }
    var intraEndDate: Date { get set }
}
