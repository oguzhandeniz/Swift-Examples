//
//  AddDiaryScreen.swift
//  DiaryApp
//
//  Created by Oğuzhan Deniz on 14.09.2022.
//

import SwiftUI

struct AddDiaryScreen: View {
    @Environment(\.managedObjectContext) private var viewContext
    @Environment(\.presentationMode) var presentationMode

    @State var title: String = ""
    @State var description: String = ""
    @State var emoji: String = ""

    var body: some View {
        Form{
            TextField("diary_title", text: $title)
            TextField("diary_description", text: $description)
            TextField("emoji", text: $emoji)

        }.navigationBarItems(trailing:
          Button(action: {
          addItem()
            presentationMode.wrappedValue.dismiss()
        }, label: {
        Image(systemName: "plus.square")
        })
        ).navigationTitle(Text("add_diary"))
    }
    
    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.title = title
            newItem.detail = description
            newItem.emoji = emoji

            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                debugPrint(nsError.localizedDescription)
            }
        }
    }
}

struct AddDiaryScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddDiaryScreen()
    }
}
