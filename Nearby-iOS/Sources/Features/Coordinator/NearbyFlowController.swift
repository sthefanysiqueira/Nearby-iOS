//
//  FlowCoordinator.swift
//  Nearby-iOS
//
//  Created by Sthefany Caroline Figuerêdo de Siqueira on 09/12/24.
//

import Foundation
import UIKit

// Essa classe serve para gerenciar o fluxo de telas do aplicativo
class NearbyFlowController {
    
    // Propriedade privada que armazena o UINavigationController, que cria uma "pilha" de telas e é responsável por gerenciar a navegação entre as telas (view controllers).
    private var navigationController: UINavigationController?
    
    // Inicializador padrão da classe.
    public init() {
        
    }
    
    // Inicia a navegação de telas
    func start() -> UINavigationController? {
        let contentView = SplashView()
        // Cria a tela inicial (view controller) e configura sua aparência.
        let startViewController = SplashViewController(contentView: contentView)
        
        // Inicializa o UINavigationController com a tela inicial (rootViewController).
        self.navigationController = UINavigationController(rootViewController: startViewController)
        // Retorna o UINavigationController configurado, que será usado para gerenciar a navegação.
        return navigationController
    }
}
