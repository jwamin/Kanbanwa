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
  
  func getIcon(state: KanbanType) -> Image {
    
    switch state {
    case .other:
      return Image(systemName: "hammer.fill")
    case .story:
      return Image(systemName: "book.closed.fill")
    case .todo:
      return Image(systemName: "bolt")
    }

  }
  
    var body: some View {

        VStack(alignment: .leading, spacing: 3){
          HStack(alignment:.firstTextBaseline){
            Text("TaskID: \(uuidTruncator(uuid: model.id))").font(Font.footnote.smallCaps())
            Spacer()
            getIcon(state: model.type)
          }
          Text("Item number: \(model.number)").font(Font.callout.smallCaps())
          Text(model.title.uppercased()).font(.title)
          Text(model.subtitle).font(.subheadline).italic()
          HStack(alignment:.firstTextBaseline){
          Text(model.body).font(.footnote).lineLimit(3).truncationMode(.tail).fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            Spacer(minLength: 8)
            Button(action: {
              //PLACEHOLDER
              print("open detail for \(model.id)")
            }, label: {
              Image(systemName: "info.circle")
            }).buttonStyle(LinkButtonStyle())
          }
        }
        .padding()
        .frame(minWidth: 200, idealWidth: 300, maxWidth:.infinity,alignment: .leading)
        .background(getBackground(state: model.type))
        .cornerRadius(25)
        .shadow(color: Color.gray.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 3, y: 2)
    }
}

struct KanbanCard_Previews: PreviewProvider {
    static var previews: some View {
      KanbanCard(model: KanbanItem(number: 0, title: "Title", subtitle: "shortDescription", body: "Body text, could go on for a while,Body text, could go on for a while, long long long",type: .story))
    }
}
