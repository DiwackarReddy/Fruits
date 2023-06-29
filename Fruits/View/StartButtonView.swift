//
//  StartButtonView.swift
//  Fruits
//
//  Created by Diwakar Reddy  on 03/05/23.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - Property
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    // MARK: - Body
    var body: some View {
        Button(action: {
            self.isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text(Localizable.buttonStart)
                Image(systemName: "arrow.right.circle")
                .imageScale(.large)
            }// :- HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
              Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(Color.white)
    }
}
// MARK: - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
