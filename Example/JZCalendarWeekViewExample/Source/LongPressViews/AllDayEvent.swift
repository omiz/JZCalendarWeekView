//
//  AllDayEvent.swift
//  JZCalendarViewExample
//
//  Created by Jeff Zhang on 3/4/18.
//  Copyright © 2018 Jeff Zhang. All rights reserved.
//

import JZCalendarWeekView

class AllDayEvent: JZCalendarEvent {
    
    var eventID: String
    
    var startDate: Date
    
    var endDate: Date
    
    var isAllDay: Bool
    
    var intraStartDate: Date
    
    var intraEndDate: Date

    var location: String
    var title: String

    init(id: String, title: String, startDate: Date, endDate: Date, location: String, isAllDay: Bool) {
        
        self.eventID = id
        self.startDate = startDate
        self.endDate = endDate
        self.isAllDay = isAllDay
        self.intraStartDate = startDate
        self.intraEndDate = endDate
        self.location = location
        self.title = title
    }

    func copy(with zone: NSZone?) -> Any {
        return AllDayEvent(id: eventID, title: title, startDate: startDate, endDate: endDate, location: location, isAllDay: isAllDay)
    }
}
