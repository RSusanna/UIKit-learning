//
//  SceneDelegate.swift
//  UIKit learning
//
//  Created by Susanna R on 04.08.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    // создание окна
    var window: UIWindow?

// во главе всего у нас стоит сцена эта
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        
        // 1. получаем нашу сцену/захват цены
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // 2. создаем новое окно с использование конструктора который принимает сцену
        let window  = UIWindow(windowScene:  windowScene)
        
        // 3. програмно создаем основной вьюконтроллер и интегрируем в него навигейшн контроллер
        let viewController = ViewController()
        let navigationController = UINavigationController(rootViewController: viewController)
        
        //4. определяем navigationController as rootViewController
        window.rootViewController = navigationController
        
        //5. настройка виндоу
        self.window = window
        window.makeKeyAndVisible()
        
        
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {

    }

    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    func sceneWillResignActive(_ scene: UIScene) {

    }

    func sceneWillEnterForeground(_ scene: UIScene) {

    }

    func sceneDidEnterBackground(_ scene: UIScene) {

    }


}

