//
//  RestaurantsListViewModel.swift
//  MVVMRX
//
//  Created by Andoni Da silva on 13/3/21.
//

import Foundation
import RxSwift

final class RestaurantsListViewModel {
    
    let title = "Restaurants"
    
    func fetchRestaurantViewModels () -> Observable<[RestaurantViewModel]> {
        RestaurantService().fetchRestaurants().map { $0.map { RestaurantViewModel(restaurant: $0) } }
    }
}
