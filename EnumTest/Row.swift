//
//  Row.swift
//  EnumTest
//
//  Created by Sanjeev Bharti on 10/16/23.
//

import SwiftUI

struct Row: View {
    
    var option: GenderOptions
    
    var body: some View {
        HStack {
            LottieView(name: option.lottieFileName, loopMode: .loop)
                .frame(width: 150)
            Text(option.name)
                .font(.title)
                .fontWeight(.light)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    VStack {
        Row(option: .male)
        Row(option: .female)
        Row(option: .others)
        Row(option: .all)
    }
}
