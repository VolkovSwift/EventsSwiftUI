//
//  MainTableView.swift
//  EventsSwiftUI
//
//  Created by user on 11/7/20.
//

import SwiftUI

struct MainTableView: View {
    
    let container = DependencyContainer()
    
    
    var body: some View {
        TabView {
            EventsView(viewModel: container.makeEventsViewModel())
                .tabItem {
                    Image(Images.events.rawValue).renderingMode(.template)
                    Text("Events")
                }
            FavoriteView()
                .tabItem {
                    Image(Images.favorite.rawValue).renderingMode(.template)
                    Text("Favorite")
                }
                }
        .accentColor(Color(UIColor.main))
    }
}

struct MainTableView_Previews: PreviewProvider {
    static var previews: some View {
        MainTableView()
    }
}
