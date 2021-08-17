//
//  AppDelegate.swift
//  Reddit-test
//
//  Created by Rene Santis on 16/08/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    // Handle URL object returned by OAuth2
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        // handle redirect URL from reddit.com
        return OAuth2Authorizer.sharedInstance.receiveRedirect(url as URL, completion: {(result) -> Void in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let token):
                DispatchQueue.main.async(execute: { () -> Void in
                    do {
                        try OAuth2TokenRepository.save(token: token, of: token.name)
                    } catch { print(error) }
                })
            }
        })
    }
    
    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        // handle redirect URL from reddit.com
        return OAuth2Authorizer.sharedInstance.receiveRedirect(url as URL, completion: {(result) -> Void in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let token):
                DispatchQueue.main.async(execute: { () -> Void in
                    do {
                        try OAuth2TokenRepository.save(token: token, of: token.name)
                    } catch { print(error) }
                })
            }
        })
    }
}

