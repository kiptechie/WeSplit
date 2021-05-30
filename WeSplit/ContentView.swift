//
//  ContentView.swift
//  WeSplit
//
//  Created by Timothy Serem on 29/05/2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        Button("Show Alert") {
            self.showingAlert = true
        } // code below will set showing alert back to false
        .alert(isPresented: $showingAlert) {
            Alert(
             title: Text("Hello it is Me"),
             message: Text("This is some detail message"),
             dismissButton: .default(Text("OK"))
            )
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
