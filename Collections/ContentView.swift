//
//  ContentView.swift
//  Collections
//
//  Created by Christian Rodriguez on 11/3/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var addActive = false
    @State private var addUPC : String = ""
    @State private var addPName : String = ""
    @State private var addPCost : Double = 0
    @State private var addPQuantity : Int = 0
    @Query private var items: [Item]

    var body: some View {
        NavigationStack {
            List {
                ForEach(items) { item in
                    HStack {
                        VStack(alignment: .leading, spacing: 5){
                            Text(item.pName)
                                .fontWeight(.semibold)
                                .minimumScaleFactor(0.5)
                            Text("$\(item.pCost, specifier: "%.2f")")
                        }
                    }
                }
            }.toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        addActive = true;
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }.alert("Add Item", isPresented: $addActive, actions: {
                TextField("Item Name", text: $addPName)
                TextField("UPC", text: $addUPC)
                TextField("Cost", value: $addPCost, format: .number.precision(.fractionLength(2)))
                TextField("Quantity", value: $addPQuantity, format: .number)
                Button("Add") {
                    withAnimation {
                        let newItem = Item(id: addUPC, pName: addPName, pCost: (addPCost), pAmount: addPQuantity)
                        modelContext.insert(newItem)
                        addActive = false
                    }
                }
                Button("Cancel") {
                    addActive = false
                }
            })
        }
    }

}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
