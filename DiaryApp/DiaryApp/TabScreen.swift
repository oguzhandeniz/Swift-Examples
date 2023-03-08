//
//  TabScreen.swift
//  DiaryApp
//
//  Created by Oğuzhan Deniz on 14.09.2022.
//

import SwiftUI

struct TabScreen: View {
    var body: some View {
        TabView {
            ListScreen()
                .tabItem {
                    Label("list_tab", systemImage: "list.dash")
                }
            OtherScreen()
                .tabItem {
                    Label("other_tab", systemImage: "gear")
                }
        }
    }
}

struct TabScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen()
    }
}
