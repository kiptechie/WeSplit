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
        ZStack {
            //Color.gray.frame(width: 200, height: 200)
            //Color(red: 1, green: 0.8, blue: 0) // yellow
            Color.green.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) // fill the whole screen
            Text("Your content")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
