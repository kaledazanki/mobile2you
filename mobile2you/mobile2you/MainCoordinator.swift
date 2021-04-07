//
//  MainCoordinator.swift
//  mobile2you
//
//  Created by Kaled Jamal El Azanki on 06/04/21.
//

import UIKit

class MainCoordinator: BaseCoordinator {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let controller = HomeViewController()
        navigationController.pushViewController(controller, animated: true)
        
    }
}
