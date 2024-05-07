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
            
            ScrollView{
                LazyVGrid(columns: viewModel.columns){
                    
                    ForEach(MockData.frameworks, id: \.id){ framework in
                        FrameworkTitleView(framework: framework).onTapGesture {
                            viewModel.selectedFramework=framework
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,isShowingDetailView: $viewModel.isShowingDetailView)
            })
        }
       
      
    }
}






#Preview {
    FrameworkGridView()
}
