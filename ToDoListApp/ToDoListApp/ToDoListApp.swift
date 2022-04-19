//
//  ToDoListApp.swift
//  ToDoListApp
//
//  Created by Oğuzhan Deniz on 18.04.2022.
//

import SwiftUI

@main
struct ToDoListAppApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
        
        var body: some Scene {
            WindowGroup {
                NavigationView {
                    ListView()
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .environmentObject(listViewModel)
            }
        }
    }
