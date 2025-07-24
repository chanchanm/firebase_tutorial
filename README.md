# Firebase Tutorial iOS App

A SwiftUI-based iOS application demonstrating Firebase authentication integration.

## Features

- **Firebase Authentication**: Email and password authentication
- **SwiftUI**: Modern declarative UI framework
- **MVVM Architecture**: Clean separation of concerns
- **Modern iOS Patterns**: NavigationStack, ObservableObject, async/await

## Project Structure

```
firebase tutorial/
├── Authentication/
│   ├── AuthenticationManager.swift    # Firebase auth manager
│   ├── AuthenticationView.swift       # Main auth screen
│   └── SignInEmailView.swift          # Email sign-in screen
├── ContentView.swift                  # Main app view
├── firebase_tutorialApp.swift         # App entry point
├── GoogleService-Info.plist           # Firebase configuration
└── Assets.xcassets/                   # App assets
```

## Setup

1. Clone the repository
2. Open `firebase tutorial.xcodeproj` in Xcode
3. Add your Firebase configuration in `GoogleService-Info.plist`
4. Build and run on iOS Simulator or device

## Requirements

- iOS 15.0+
- Xcode 14.0+
- Swift 5.5+
- Firebase SDK

## Recent Changes

- Fixed UI text case from uppercase to lowercase
- Added keyboard autocapitalization prevention for better UX
- Updated sign-in flow with lowercase text
