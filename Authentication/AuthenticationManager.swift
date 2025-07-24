//
//  AuthenticationManager.swift
//  firebase tutorial
//
//  Created by C M on 7/24/25.
//

import Foundation
import FirebaseAuth

struct AuthDataResultModel {
    let email: String?
    let uid: String
    let photoURL: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoURL = user.photoURL?.absoluteString
    }
}

final class AuthenticationManager {
    
    static let shared = AuthenticationManager()
    private init() {}
    
    func createUser(email: String, password: String) async throws -> AuthDataResultModel {
        let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
        return AuthDataResultModel(user: authDataResult.user )
    }
}
