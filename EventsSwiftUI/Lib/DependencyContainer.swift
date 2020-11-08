//
//  DependencyContainer.swift
//  RxEvents
//
//  Created by Uladzislau Volkau on 10/26/20.
//

import Foundation

protocol ViewModelFactory {
    func makeEventsViewModel() -> EventsViewModel
    func makeFavoriteViewModel() -> FavoriteViewModel
}

protocol HelpersFactory {
    func makeFavoriteProvider() -> FavoriteProviderProtocol
    func makeNetworkProvider() -> NetworkProvider
}

class DependencyContainer {
    
    private lazy var eventsViewModel = EventsViewModel(networkProvider: networkProvider, favoriteProvider: favoriteProvider)
    private lazy var favoriteViewModel = FavoriteViewModel(favoriteProvider: favoriteProvider)
    private lazy var favoriteProvider = FavoriteProvider()
    private lazy var networkProvider = NetworkProvider()
}



//MARK: - ViewModelFactory

extension DependencyContainer: ViewModelFactory {
    func makeEventsViewModel() -> EventsViewModel {
        return eventsViewModel
    }
    
    func makeFavoriteViewModel() -> FavoriteViewModel {
        return favoriteViewModel
    }
}

//MARK: - HelpersFactory

extension DependencyContainer: HelpersFactory {
    func makeFavoriteProvider() -> FavoriteProviderProtocol {
        return favoriteProvider
    }
            
    func makeNetworkProvider() -> NetworkProvider {
        return networkProvider
    }
}

