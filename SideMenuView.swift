//
//  SideMenuView.swift
//  Side Menu
//
//  Created by Wendy Xie on 2/4/23.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack {
//            Text("Menu")
//                .font(.title.bold())
//                .foregroundColor(.white)
//            Divider()
//                .frame(width: 130, height: 2)
//                .background(Color.white)
//                .padding(.horizontal, 16)
            
            // Content
            Text("Exercise - How To's")
                .font(.title)
                .foregroundColor(.white)
                .padding(.vertical)
            Text("Workout Routines")
                .font(.title)
                .foregroundColor(.white)
                .padding(.vertical)
            Text("Nutrition")
                .font(.title)
                .foregroundColor(.white)
                .padding(.vertical)
            Text("Mental Health")
                .font(.title)
                .foregroundColor(.white)
                .padding(.vertical)
            Text("Levels")
                .font(.title)
                .foregroundColor(.white)
                .padding(.vertical)
            Spacer()
        }
        .padding(32)
        .background(Color(#colorLiteral(red: 0.9196853042, green: 0.6919215322, blue: 0.8739805818, alpha: 1)))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
