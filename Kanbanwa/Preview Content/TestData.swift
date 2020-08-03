//
//  TestData.swift
//  Kanbanwa
//
//  Created by Joss Manger on 8/3/20.
//

import Foundation

class TestData: KanbanController {
  
  override init(){
    super.init()
    tasks = [
      "Not Started": [
        KanbanItem(number: 0, title: "Something I have to do", subtitle: "Might not want to do", body: "yeah the devil is in the detail",type: .todo)
      ],
      "Doing": [
        KanbanItem(number: 0, title: "payments Landing", subtitle: "Long and complex payment stories", body: "lots of detail here",type: .story),
        KanbanItem(number: 0, title: "payments - Make a payment", subtitle: "Another Long and complex payment storiy", body: "lots of detail here",type: .story)
      ],
      "Done": [
        KanbanItem(number: 0, title: "Chat UI", subtitle: "Avi Helped", body: "AWS sucks",type: .other),
        KanbanItem(number: 0, title: "Chat Wrapper", subtitle: "Julian Helped", body: "AWS sucks",type: .other),
        KanbanItem(number: 0, title: "Chat Protocol", subtitle: "All me", body: "AWS sucks",type: .other)
      ],
      "Reviewed": [
        KanbanItem(number: 0, title: "Everything else", subtitle: "It's all done", body: "and UX reviewed", type: .todo)
      ]
    ]
  }

  
}
