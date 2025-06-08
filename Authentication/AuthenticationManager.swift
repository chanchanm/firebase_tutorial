//
//  AuthenticationManger.swift
//  firebase tutorial
//
//  Created by C M on 6/3/25.
//

import Foundation
import FirebaseAuth

struct AutAuthDataResultModel {
    let uid: String
    let email: String?
    let photoURL: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoURL = user.photoURL?.absoluteString
    }
}


final class AuthenticationManager {
    
    static let share = AuthenticationManager()
    private init() { }
    
    func getAuthenticatedUser() throws -> AutAuthDataResultModel? {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        return AutAuthDataResultModel(user: user)
    }
    
    @discardableResult
    func createUser(email: String, password: String) async throws -> AutAuthDataResultModel {
        let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
        return AutAuthDataResultModel(user:authDataResult.user)
    }
    
    
    @discardableResult 
    func signIn(email: String, password: String) async throws -> AutAuthDataResultModel {
        let authDataResult = try await Auth.auth().signIn(withEmail: email, password: password)
        return AutAuthDataResultModel(user: authDataResult.user)
    }
    
    
    
    func signOut() throws  {
         try Auth.auth().signOut()
    }
}

