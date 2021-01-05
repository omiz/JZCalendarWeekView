//
//  JZAllDayCorner.swift
//  JZCalendarWeekView
//
//  Created by Jeff Zhang on 11/5/18.
//  Copyright © 2018 Jeff Zhang. All rights reserved.
//

import UIKit

open class JZAllDayCorner: UICollectionReusableView {

    public var lblTitle = UILabel()

    public override init(frame: CGRect) {
        super.init(frame: frame)

        setupUI()
        setupBottomDivider()
    }

    open func setupUI() {
        if #available(iOS 13.0, *) {
            self.backgroundColor = UIColor.secondarySystemBackground
        } else {
            self.backgroundColor = .white
        }

        self.clipsToBounds = true
        self.addSubview(lblTitle)
        let bundle = Bundle(for: Self.self)
        lblTitle.text = NSLocalizedString("all-day", tableName: nil, bundle: bundle, value: "", comment: "Section header title of the all day events")
        lblTitle.textColor = JZWeekViewColors.allDayHeader
        lblTitle.font = UIFont.systemFont(ofSize: 12)
        // Support iPhone X Landscape state (same as JZRowHeader)
        lblTitle.setAnchorCenterVerticallyTo(view: self, trailingAnchor: (self.trailingAnchor, -2))
    }

    open func setupBottomDivider() {
        let bottomDivider = UIView()
        bottomDivider.backgroundColor = JZWeekViewColors.gridLine
        addSubview(bottomDivider)
        bottomDivider.setAnchorConstraintsEqualTo(heightAnchor: 0.5, bottomAnchor: (bottomAnchor, 0), leadingAnchor: (leadingAnchor, 0), trailingAnchor: (trailingAnchor, 0))
    }

    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
