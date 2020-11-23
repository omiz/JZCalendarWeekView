//
//  JZCalendarEvent.swift
//  JZCalendarWeekView
//
//  Created by Omar Allaham on 11/23/20.
//  Copyright © 2020 Jeff Zhang. All rights reserved.
//

import Foundation

public protocol JZCalendarEvent {
    
    /// The stable identity of the entity associated with this instance.
    var eventID: String { get }
    
    var startDate: Date { get }
    
    var endDate: Date { get }
    
    var isAllDay: Bool { get }
}
