//
//  FruitCradView.swift
//  Fruits
//
//  Created by Diwakar Reddy  on 03/05/23.
//

import SwiftUI

struct FruitCradView: View {
    // MARK: - Property
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Mark: Fruit Image
                Image(fruit.image)
                    .resizable()
                    .modifier(OnBoadingImage())
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // Mark: Fruit Title
                Text(fruit.title)
                    .modifier(onBoardingTitle())
                // Mark: Headline
                Text(fruit.headline)
                    .modifier(HeadlineTitle())
                // Mark: ButtonStart
                StartButtonView()
            }// :- VStack
        }// :- ZStack
        .onAppear {
          withAnimation(.easeOut(duration: 0.5)) {
            isAnimating = true
          }
        }
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}
// MARK: - Preview
struct FruitCradView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCradView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
