//
//  KanbanModel.swift
//  Kanbanwa
//
//  Created by Joss Manger on 8/3/20.
//

import Foundation

enum KanbanType: String, Codable {
  case story
  case todo
  case other
}

struct KanbanItem: Codable, Identifiable {
  
  var encoded: String {
    String(data: try! JSONEncoder().encode(self),encoding: .utf8)!
  }
  
  let id: UUID
  let number:Int
  var title: String
  var subtitle: String
  var body: String
  let type: KanbanType
  let created: Date
  var updated: Date
  
  init(number:Int, title: String, subtitle: String, body: String, type: KanbanType){
    self.id = UUID()
    self.number = number
    self.title = title
    self.subtitle = subtitle
    self.body = body
    self.type = type
    self.created = Date()
    self.updated = self.created
  }
  
}

class KanbanController: ObservableObject, NSDrag {
  
  @Published var headings = ["Not Started","Doing","Done","Reviewed"]
  
  @Published var tasks:[String:[KanbanItem]] = [
    "Not Started": [],
    "Doing": [],
    "Done": [],
    "Reviewed": []
    ]
  
  func tasksForState(strKey:String) -> [KanbanItem] {
    
    return tasks[strKey]!.sorted(by: { (item1, item2) -> Bool in
      item1.created < item2.created
    })
    
  }
  
}
