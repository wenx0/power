//
//  ContentView.swift
//  Side Menu
//
//  Created by Wendy Xie on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu: Bool = false
    var body: some View {
            NavigationView {
                
                ZStack {
                    Image(systemName: "heart.fill").foregroundColor(.red)
                        .font(Font.system(size: 230))
                    GeometryReader { _ in
                        HStack {
                            Spacer()
                            SideMenuView()
                                .offset(x: showMenu ? 0 : UIScreen.main.bounds.width)
                                .animation(.easeInOut(duration: 0.3), value : showMenu)
                        }
                        
                    }
                    
                    .background(Color.black.opacity(showMenu ? 0.5 : 0))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(#colorLiteral(red: 0.9196853042, green: 0.6919215322, blue: 0.8739805818, alpha: 1)))
                
                //                    .navigationTitle("Side Menu Demo")
                .navigationBarTitleDisplayMode(.inline)
                
                .toolbar {
                    Button {
                        self.showMenu.toggle()
                    } label: {
                        
                        if showMenu {
                            Image(systemName: "xmark")
                                .font(.title)
                                .foregroundColor(.white)
                            
                        } else {
                            Image(systemName: "text.justify")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                    }
                    
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
