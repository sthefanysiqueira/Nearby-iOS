//
//  SceneDelegate.swift
//  Nearby-iOS
//
//  Created by Sthefany Caroline Figuerêdo de Siqueira on 09/12/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    var flowController: FlowCoordinator? // Cria uma propriedade para o FlowCoordinator, que gerencia o fluxo de navegação no aplicativo.


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return } // Garante que a cena fornecida seja do tipo UIWindowScene.
        let window = UIWindow(windowScene: windowScene) // Cria uma nova instância de UIWindow para a cena fornecida.

        self.flowController = FlowCoordinator() // Inicializa o FlowCoordinator, que gerenciará o fluxo de telas.
        let rootViewController = flowController?.start() // Obtém o UINavigationController inicial configurado pelo FlowCoordinator.
        
        window.rootViewController = rootViewController // Define o rootViewController da janela como o UINavigationController retornado.
        self.window = window // Armazena a referência da janela criada na propriedade window da classe.
        window.makeKeyAndVisible() // Torna a janela visível e define-a como a principal (key window).
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

