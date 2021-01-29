//
//  ContentView.swift
//  ParseWithSwiftUI
//
//  Created by Venom on 29/01/21.
//

import SwiftUI
import Parse

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                // Here you should call the method to run when the View appears
                
                doParseStuff()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func doParseStuff(){
    let query = PFQuery(className:"ClassNameHere") // Initializes a ParseQuery in the VideoFile class
    query.findObjectsInBackground { (objects: [PFObject]?, error: Error?) in // executes the query
        if let error = error {  // if there's an error
            // print the error
            print(error.localizedDescription)
        } else if let objects = objects { // if successfuly retrieved
            // print to the console
            print("Successfully retrieved \(objects.count) videos.")
        }
    }
}
