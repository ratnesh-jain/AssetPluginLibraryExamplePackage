//
//  File.swift
//  
//
//  Created by Ratnesh Jain on 14/04/24.
//

import Foundation
import Resources
import SwiftUI

public struct AppFeature: View {
    
    public var body: some View {
        VStack {
            Image(asset: .appleMaps)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image(asset: .swiftScript)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image(asset: .swiftui)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
    
}

#Preview {
    AppFeature()
}
