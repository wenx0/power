//
//  ProgressBar.swift
//  Final Power Demo
//
//  Created by Valerie Ferman on 2/4/23.
//

import Foundation
import SwiftUI

struct ProgressBar: View {

    var width: CGFloat = 200
    var height: CGFloat = 20
    var percent: CGFloat = 69
    var color1 = Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
    var color2 = Color(#colorLiteral(red: 1, green: 0, blue: 0.4683920741, alpha: 1))
    
    var body: some View {
        let multiplier = width / 100
        
        ZStack(alignment: .leading) {
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: width, height: height)
                .foregroundColor(Color.black.opacity(0.1))
            
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: percent * multiplier, height: height)
                .background(
                    LinearGradient(gradient: Gradient(colors: [.red, .orange]), startPoint: .leading, endPoint: .trailing)
                        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                )
                .foregroundColor(.clear)
        }
    }
    
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}
