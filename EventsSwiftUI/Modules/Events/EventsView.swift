//
//  ContentView.swift
//  EventsSwiftUI
//
//  Created by Uladzislau Volkau on 11/6/20.
//

import SwiftUI

struct EventsView: View {
    @ObservedObject var viewModel: EventsViewModel
    
    init(viewModel: EventsViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List(0..<5) { item in
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let container = DependencyContainer()
        EventsView(viewModel: container.makeEventsViewModel())
    }
}
