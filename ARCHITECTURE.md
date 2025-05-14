# 📐 Project Architecture: Flutter App Template

This template provides a scalable and modular Flutter architecture designed for rapid development of Android apps using Firebase. It’s perfect for cloning and starting new projects with clean separation of concerns.

---

## 📁 Folder Structure Overview

```
lib/
├── main.dart              # Entry point
├── app.dart               # MaterialApp setup with routing & theming
├── core/                  # Global configs and constants
│   ├── theme.dart         # ThemeData definitions
│   ├── constants.dart     # App-wide static constants
│   └── routes.dart        # Named route management
├── services/              # Business logic and integrations
│   ├── firebase_service.dart # Firebase initialization
│   └── auth_service.dart     # Firebase Auth helper
├── models/                # Data models (e.g., user, post)
├── views/                 # Screens/pages of the app
│   ├── home_view.dart
│   └── login_view.dart
├── widgets/               # Reusable UI components
│   └── custom_button.dart
└── utils/                 # Helper functions and validators
    └── validators.dart
```

---

## 🔥 Firebase Setup

1. Add your `google-services.json` file to `android/app/`.
2. Add `firebase_core` and `firebase_auth` to `pubspec.yaml`.
3. Initialize Firebase at startup:
   ```dart
   void main() async {
     WidgetsFlutterBinding.ensureInitialized();
     await FirebaseService.initialize();
     runApp(MyApp());
   }
   ```

---

## 🎨 Theming

Located in: `lib/core/theme.dart`

Customize your app’s colors, fonts, and brightness modes using a centralized `ThemeData`.

---

## 📍 Routing

Located in: `lib/core/routes.dart`

Define named routes in a map structure:
```dart
final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => HomeView(),
  '/login': (context) => LoginView(),
};
```

---

## 📦 Services

- `firebase_service.dart`: Wraps `Firebase.initializeApp()`.
- `auth_service.dart`: Handles sign-in and auth-related logic.

---

## 🧩 Widgets

Reusable components like `CustomButton` can be placed here for consistency across views.

---

## 🧪 Testing

Add widget or unit tests under `/test`. Suggested packages:
- `flutter_test`
- `mockito`

---

## 📁 Assets

- Place images in `assets/images/`
- Place fonts in `assets/fonts/`
- Declare all assets in `pubspec.yaml`

---

## 🧠 Developer Notes

- Ensure `.env` or sensitive files are not committed.
- Update `README.md` and `pubspec.yaml` with app-specific info when cloning.
- Use `flutter clean` before builds to clear old artifacts.

---

Happy coding! 🚀
