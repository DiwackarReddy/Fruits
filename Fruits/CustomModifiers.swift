//
//  CustomModifiers.swift
//  Fruits
//
//  Created by Diwakar Reddy  on 03/05/23.
//

import SwiftUI
// MARK: - OnBoardingImage
struct OnBoadingImage: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 8,x: 6,y: 8)
    }
}
// MARK: - OnBoardingTitle
struct onBoardingTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 2,x: 2,y: 2)
    }
}
// MARK: - HeadlineTitle
struct HeadlineTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 16)
            .frame(maxWidth: 480)
    }
}
