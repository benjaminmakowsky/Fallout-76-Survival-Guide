//
//  PlanItems+CoreDataProperties.swift
//  Fallout 76 Survival Guide
//
//  Created by Nicole Makowsky on 12/17/18.
//  Copyright © 2018 Nicole Makowsky. All rights reserved.
//
//

import Foundation
import CoreData


extension PlanItems {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PlanItems> {
        return NSFetchRequest<PlanItems>(entityName: "PlanItems")
    }

    @NSManaged public var name: String?
    @NSManaged public var location: String?
    @NSManaged public var isFound: Bool

}
