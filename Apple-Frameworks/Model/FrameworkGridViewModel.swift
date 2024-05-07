//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Lorito Mbuta on 06/05/2024.
//

import SwiftUI



final class FrameworkGridViewModel: ObservableObject{
    var selectedFramework: Framework?{
        
        // when this variable is changed
        didSet{
            print("Variable changed")
            isShowingDetailView=true
        }
    }
    
    
    
    //Published in observableObject
   @Published var isShowingDetailView = false
    
    
    let columns:[GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
}
