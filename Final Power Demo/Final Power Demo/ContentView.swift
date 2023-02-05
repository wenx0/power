//
//  ContentView.swift
//  Water Tracker 2
//
//  Created by Valerie Ferman on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var filled1: Bool = false
    @State private var filled2: Bool = false
    @State private var filled3: Bool = false
    @State private var filled4: Bool = false
    @State private var filled5: Bool = false
    @State private var filled6: Bool = false
    @State private var filled7: Bool = false
    @State private var filled8: Bool = false
    @State private var filled: [Bool] = [false, false, false, false, false, false, false, false]
    
    var width: CGFloat = 200
    var height: CGFloat = 20
    var percent: CGFloat = 70
    var color1 = Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
    var color2 = Color(#colorLiteral(red: 0.9196853042, green: 0.6919215322, blue: 0.8739805818, alpha: 1))
    
    var color3 = Color(#colorLiteral(red: 0.9332230687, green: 0, blue: 0, alpha: 1))

    
    
    var body: some View {
        let multiplier = width / 100
        
        ZStack {
            
            Group {
                
                Button {
                    if (filled[1] == false) {
                        filled[0].toggle()
                    }
                } label: {
                    Image(systemName: filled[0] == false ? "drop" : "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 35)
                }
                .offset(x: -150 , y: 200)
                
                
                Button {
                    if (filled[0] == true && filled[2] == false) {
                        filled[1].toggle()
                    } else if (filled[0] == false && filled[2] == false) {
                        for i in 0...1 {
                            filled[i] = true
                        }
                    }
                } label: {
                    Image(systemName: filled[1] == false ? "drop" : "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 35)
                }
                .offset(x: -107.4, y: 200)
                
                
                Button {
                    if (filled[1] == true && filled[3] == false) {
                        filled[2].toggle()
                    } else if (filled[1] == false && filled[3] == false) {
                        for i in 0...2 {
                            filled[i] = true
                        }
                    }
                } label: {
                    Image(systemName: filled[2] == false ? "drop" : "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 35)
                }
                .offset(x: -64.5, y: 200)
                
                
                Button {
                    if (filled[2] == true && filled[4] == false) {
                        filled[3].toggle()
                    } else if (filled[2] == false && filled[4] == false) {
                        for i in 0...3 {
                            filled[i] = true
                        }
                    }
                } label: {
                    Image(systemName: filled[3] == false ? "drop" : "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 35)
                }
                .offset(x: -21.6, y: 200)
                
                
                Button {
                    if (filled[3] == true && filled[5] == false) {
                        filled[4].toggle()
                    } else if (filled[3] == false && filled[5] == false) {
                        for i in 0...4 {
                            filled[i] = true
                        }
                    }
                } label: {
                    Image(systemName: filled[4] == false ? "drop" : "drop.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 35)
                }
                .offset(x: 21.3, y: 200)

            }
            
            Group {
                
                Button {
                    
                } label: {
                    Image (systemName: "rectangle.fill")
                        .resizable()
                        .frame(width: 110, height: 55)
                        .offset(x: 110 , y: 200)
                        .foregroundColor(.pink)
                        
                    
                }
                
                Text("h20")
                    .offset(x: 110 , y: 200)
                    .font(Font.custom("Helvetica Neue", size: 35))
                    .foregroundColor(.white)
                    .padding()
                
                Button {
                    
                } label: {
                    Image (systemName: "rectangle.fill")
                        .resizable()
                        .frame(width: 110, height: 55)
                        .offset(x: 110 , y: 270)
                        .foregroundColor(.pink)
                        .frame(width: 40, height: 40)
                }
                
                Text("calories")
                    .offset(x: 110 , y: 270)
                    .font(Font.custom("Helvetica Neue", size: 27))
                    .foregroundColor(.white)
                    .padding()
                
            }
                
            ZStack(alignment: .leading) {

                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(width: width, height: height)
                    .foregroundColor(Color.black.opacity(0.1))
                    .offset(x: -65, y: 270)

                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(width: percent * multiplier, height: height)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9332230687, green: 0, blue: 0, alpha: 1)), .orange]), startPoint: .leading, endPoint: .trailing)
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    )
                    .offset(x: -65, y: 270)
                    .foregroundColor(.clear)

            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.9196853042, green: 0.6919215322, blue: 0.8739805818, alpha: 1)))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
