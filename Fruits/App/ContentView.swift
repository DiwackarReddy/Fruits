//
//  ContentView.swift
//  Fruits
//
//  Created by Diwakar Reddy  on 03/05/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Property
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false

    // MARK: - Body
    var body: some View {
        NavigationView {
            List(fruits.shuffled()) { fruit in
                NavigationLink(destination: FruitsDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical,4)
                }// :- Link
            }// :- List
            .navigationTitle("Fruits")
            .navigationBarItems(
              trailing:
                Button(action: {
                  isShowingSettings = true
                }) {
                  Image(systemName: "slider.horizontal.3")
                } //: BUTTON
                .sheet(isPresented: $isShowingSettings) {
                  SettingsView()
                }
            )
        }// :- Navigation
    }
}
// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
