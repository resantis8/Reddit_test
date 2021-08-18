//
//  StartViewModel.swift
//  Reddit-test
//
//  Created by Rene Santis on 18/08/21.
//

import Foundation

class StartViewModel: NSObject {
    
    // MARK: - Type Aliases
    
    typealias SaveTokenCompletion = (Result<OAuth2Token>) -> Void
    
    // MARK: - Properties
    
    var didSaveToken: SaveTokenCompletion?
    
    private let oauthService: OAuth2Authorizer
    
    // MARK: - Initialization
    
    init(oauthService: OAuth2Authorizer) {
        self.oauthService = oauthService
        
        super.init()
    }
    
    // MARK: - Public API
    
    func refresh() {
        fetchOAuthAuthorizerToken()
    }
    
    private func fetchOAuthAuthorizerToken() {
        do {
            try oauthService.challengeWithAllScopes()
        } catch {
        }
        
    }
    
}
