//
//  AfButton.swift
//  Apple-Frameworks
//
//  Created by Lorito Mbuta on 06/05/2024.
//

import SwiftUI

struct AfButton: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)

            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AfButton(title: "Learn more")
}
