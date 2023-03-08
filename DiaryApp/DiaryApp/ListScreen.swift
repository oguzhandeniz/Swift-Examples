//
//  ListScreen.swift
//  DiaryApp
//
//  Created by Oğuzhan Deniz on 14.09.2022.
//

import SwiftUI

struct ListScreen: View {
    
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    
   
    private var items: FetchedResults<Item>
    
    @State var actionAddDiary : Int? = 0
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing){
                
                NavigationLink(destination: AddDiaryScreen(), tag: 1, selection: $actionAddDiary) {
                    EmptyView()
                }
                
                List {
                    ForEach(items) { item in
                        HStack{
                            Text(item.emoji ?? "").font(.title)
                            VStack(alignment: .leading){
                                
                                Text(item.title ?? "").font(.headline)
                                Text(item.detail ?? "").foregroundColor(.secondary)
                                Text("\(item.timestamp!, formatter: itemFormatter)")
                            }
                        }
                        
                    }
                }
                Button{
                    self.actionAddDiary = 1
                } label: {
                    FabButtonView()
                        .padding(25)
                }
            }
          .navigationTitle(Text("list_tab"))
        }
    }
    
    private let itemFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .medium
        return formatter
    }()
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen()
    }
}
