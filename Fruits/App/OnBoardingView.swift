//
//  OnBoardingView.swift
//  Fruits
//
//  Created by Diwakar Reddy  on 03/05/23.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: - Property
    var fruits: [Fruit] = fruitsData
    // MARK: - Body
    var body: some View {
        TabView {
          ForEach(fruits) { item in
            FruitCradView(fruit: item)
          } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
