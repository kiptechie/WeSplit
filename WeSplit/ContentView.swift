//
//  ContentView.swift
//  WeSplit
//
//  Created by Timothy Serem on 29/05/2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        Form {
            Button("Tap me!") {
                print("Button was tapped")
            }
            Button(action: {
                print("Button 2 tapped")
            }) {
                HStack(spacing: 10) {
                    Image(systemName: "pencil")
                    Text("Edit")
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
