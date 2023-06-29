//
//  FruitsDetailView.swift
//  Fruits
//
//  Created by Diwakar Reddy  on 04/05/23.
//

import SwiftUI

struct FruitsDetailView: View {
    // MARK: - Property
    var fruit: Fruit
    // MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical,showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                   // Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        //Title
                        Text(fruit.title)
                          .font(.largeTitle)
                          .fontWeight(.heavy)
                          .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                          .font(.headline)
                          .multilineTextAlignment(.leading)
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                          .fontWeight(.bold)
                          .foregroundColor(fruit.gradientColors[1])
                        // DESCRIPTION
                        Text(fruit.description)
                          .multilineTextAlignment(.leading)
                        // LINK
                        SourceLinkView()
                          .padding(.top, 10)
                          .padding(.bottom, 40)
                    }// :- VStack
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640,alignment: .center)
                }// :- VStack
                .navigationTitle(fruit.title)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            } // :- ScrollView
            .edgesIgnoringSafeArea(.top)
        }// :- NavigationView
        .navigationViewStyle(.stack)
    }
}
// MARK: - Preview
struct FruitsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsDetailView(fruit: fruitsData[0])
    }
}
