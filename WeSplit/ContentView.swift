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
            Section {
                VStack(
                    alignment: .leading,
                    spacing: 20
                ) {
                    Text("Hello iOS")
                    Text("This is another Vstack text view")
                }
            }
            Section {
                VStack {
                    Text("Hello iOS")
                    Text("This is another Vstack text view with Spacer()")
                    Spacer()
                }
            }
            Section {
                HStack(
                    spacing: 20
                ) {
                    Text("Hello iOS")
                    Text("This is another Hstack text view")
                }
            }
            Section {
                ZStack {
                    Text("Hello iOS")
                    Text("This is another Zstack text view")
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
