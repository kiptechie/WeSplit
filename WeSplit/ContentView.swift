//
//  ContentView.swift
//  WeSplit
//
//  Created by Timothy Serem on 29/05/2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var count = 0
    @State private var name = ""
    var body: some View {
        NavigationView {
            
            Form {
                ForEach(0 ..< 20) {
                    Text("Row \($0 + 1)")
                }
            }
            
//        Form {
//            Section {
//                Text("Hello iOS")
//                Text("Hello iOS")
//                Text("Hello iOS")
//            }
//            Section {
//                Text("Hello iOS")
//                Text("Hello iOS")
//                Text("Hello iOS")
//                Text("Hello iOS")
//            }
//
//            Section {
//                Button("Tap count \(count)") {
//                    count += 1
//                }
//            }
//
//            Section {
//                TextField("Enter your name", text: $name)
//                Text("Your name is: \(name)")
//            }
//        }
        
        .navigationBarTitle("WeSplit")
        }
}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
