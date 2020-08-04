//
//  ContentView.swift
//  Kanbanwa
//
//  Created by Joss Manger on 8/3/20.
//

import SwiftUI

struct ContentView: View {
  
  @EnvironmentObject var mainModel: KanbanController
  
  var body: some View {
    HStack(alignment:.top){
      ForEach(mainModel.headings.indices){ index in
        VStack(spacing:8){
          Text(mainModel.headings[index]).font(Font.body.smallCaps()).fixedSize(horizontal: false, vertical: true)
          Divider()
          VStack(spacing:8){
            ForEach(mainModel.tasksForState(strKey: mainModel.headings[index])) { item in
              KanbanCard(model: item).onDrag({
                NSItemProvider(object: item.encoded as NSItemProviderWriting)
              })
            }
          }.frame(maxHeight:.infinity,alignment:.top).onDrop(of: ["public.utf8-plain-text"], delegate: mainModel)
        }
        if index != mainModel.headings.indices.last {
          Divider()
        }
      }
    }.padding()
    .toolbar {
      ToolbarItem(placement: .primaryAction) {
        Button(action: { }, label: {
          Image(systemName: "square.and.arrow.up")
        })
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(TestData())
  }
}
