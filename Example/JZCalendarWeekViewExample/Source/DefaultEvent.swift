//
//  DefaultEvent.swift
//  JZCalendarWeekViewExample
//
//  Created by Jeff Zhang on 30/5/18.
//  Copyright © 2018 Jeff Zhang. All rights reserved.
//

import Foundation
import JZCalendarWeekView

class DefaultEvent: JZCalendarEvent {
    
    var eventID: String
    
    var startDate: Date
    
    var endDate: Date
    
    var isAllDay: Bool = false
    
    var location: String
    
    var title: String

    init(id: String, title: String, startDate: Date, endDate: Date, location: String) {
        self.eventID = id
        self.startDate = startDate
        self.endDate = endDate
        self.isAllDay = false
        self.location = location
        self.title = title
    }

    func copy(with zone: NSZone?) -> Any {
        return DefaultEvent(id: eventID, title: title, startDate: startDate, endDate: endDate, location: location)
    }
}
