//
//  ContentView.swift
//  Kanbanwa
//
//  Created by Joss Manger on 8/3/20.
//

import SwiftUI

struct ContentView: View {
  
  @EnvironmentObject var mainModel: KanbanController
  
  func
  
  var body: some View {
    HStack(alignment:.top){
      ForEach(mainModel.headings,id:\.self){ title in
        VStack(spacing:8){
          Text(title).font(Font.body.smallCaps()).fixedSize(horizontal: false, vertical: true)
          Divider()
          ForEach(mainModel.tasksForState(strKey: title)) { item in
            KanbanCard(model: item).onDrag({
              NSItemProvider(object: item.encoded as NSItemProviderWriting)
            })
          }
        }.onDrop(of: ["public.text"], delegate: <#T##DropDelegate#>)
        Divider()
      }
    }.padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .environmentObject(TestData())
  }
}
