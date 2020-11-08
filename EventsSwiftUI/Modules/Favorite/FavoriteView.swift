//
//  FavoriteView.swift
//  EventsSwiftUI
//
//  Created by user on 11/7/20.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            VStack(alignment: .leading) {
                Text("Test text")
                    .font(.system(size: 13, weight: .medium, design: .default))
                Text("Test subtitle")
                    .font(.system(size: 10, weight: .light, design: .default))
            }
            
            Spacer()
            Image("emptyStar")
                .resizable()
                .frame(width: 25, height: 25)
                
            
        }
        .ignoresSafeArea()
        .foregroundColor(Color(UIColor.main))
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
