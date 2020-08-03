//
//  KanbanCard.swift
//  Kanbanwa
//
//  Created by Joss Manger on 8/3/20.
//

import SwiftUI

struct KanbanCard: View {
  
  var model: KanbanItem
  
  func getBackground(state: KanbanType) -> some View {
    let gradients = Constants.Gradients.self
    
    switch state {
    case .other:
      return gradients.orange
    case .story:
      return gradients.pink
    case .todo:
      return gradients.blue
    }

  }
  
  
    var body: some View {

        VStack(alignment: .leading, spacing: 3){
          Text("Item number: \(model.number)").font(Font.body.smallCaps())
          Text(model.title.uppercased()).font(.title)
          Text(model.subtitle).font(.subheadline)
          Text(model.body).lineLimit(3).truncationMode(.tail).fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
        }
        .padding()
        .frame(minWidth: 200, idealWidth: 300, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(getBackground(state: model.type))
        .cornerRadius(25)
    }
}

struct KanbanCard_Previews: PreviewProvider {
    static var previews: some View {
      KanbanCard(model: KanbanItem(number: 0, title: "Title", subtitle: "shortDescription", body: "Body text, could go on for a while,Body text, could go on for a while, long long long",type: .story))
    }
}
