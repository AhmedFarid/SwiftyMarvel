//
//  CoreDataMapper.swift
//  SwiftyMarvel
//
//  Created by Farido on 19/10/2025.
//

import Foundation
import CoreData

protocol CoreDataMapper {
    associatedtype EntityType

    /// Convert the domain entity to a core data entity
    /// - Parameter context: The context to insert the entity in
    /// - Returns: The Core Data entity
    func toCoreDataEntity(in context: NSManagedObjectContext) -> EntityType
}
