//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Lorito Mbuta on 06/05/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            XDismissButton(isShowingDetailView: $isShowingDetailView)
           
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            }label: {
               AfButton(title: "Learn More")
            }
        }.fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString ) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    

    FrameworkDetailView(framework: MockData.sampleFramework,isShowingDetailView: .constant(false))
}
