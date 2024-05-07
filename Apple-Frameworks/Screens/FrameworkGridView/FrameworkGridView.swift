//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Lorito Mbuta on 06/05/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView{
            
            
            List{
                
                
                ForEach(MockData.frameworks, id: \.id){ framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                        FrameworkTitleView(framework: framework)
                    }
                   
                }
            }
            
            .navigationTitle("🍎 Frameworks")
//            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
//                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,isShowingDetailView: $viewModel.isShowingDetailView)
//            })
        }
        .accentColor(Color(.label))
        
        
    }
}






#Preview {
    FrameworkGridView()
}
