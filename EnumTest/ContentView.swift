//
//  ContentView.swift
//  EnumTest
//
//  Created by Sanjeev Bharti on 10/16/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        List(GenderOptions.allCases, id: \.self, rowContent: { gender in
            Row(option: gender)
                .frame(height: 150)
                .onTapGesture {
                    print("selected row: \(gender.name)")
                }
        })
        
    }
}

#Preview {
    ContentView()
}

public enum GenderOptions: String, CaseIterable {
    
    case male   = "Male"
    case female = "Female"
    case others = "Others"
    case all    = "All"
    
    // Text
    var name: String {
        return self.rawValue
    }
    
    // Image name
    var imageName: String {
        switch self {
        case .male: return "figure.skiing.downhill"
        case .female: return "figure.handball"
        case .others: return "target"
        case .all: return "aqi.medium"
        }
    }
    
    // Lottie file animation name
    var lottieFileName: String {
        return self.rawValue.lowercased()
    }
    
    // Selection sending to backend
    var apiIdentifier: String {
        switch self {
        case .male: return "M"
        case .female: return "F"
        case .others: return "U"
        case .all: return "M||F||U"
        }
    }
}


