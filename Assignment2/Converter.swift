//
// ContentView.swift : Assignment2
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct Converter: View {
    
    var links: [Link] = [Link(label: "World Currency Exchange", type: "currency"), Link(label: "Crypto Exchange", type: "crypto")]
    
    var body: some View {
        NavigationStack {
            List(links) {
                link in NavigationLink(link.label, value: link)
            }.navigationDestination(for: Link.self) {
                link in ConverterView(type: link.type)
            }.navigationTitle("Conversion App")
        }
    }
}

struct Link: Identifiable, Hashable {
    let id = UUID()
    var label : String
    var type : String
}

struct Converter_Previews: PreviewProvider {
    static var previews: some View {
        Converter()
    }
}
