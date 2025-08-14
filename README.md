

This project is a **pixel-perfect Flutter implementation** based on the provided UI/UX design.  
It uses **BLoC/Cubit** for state management, along with **freezed**, **getIt**, and **injectable** for clean architecture and dependency injection.  
The app includes **animations**, **haptic feedback**, and follows a **scalable folder structure** with a focus on testability.

---

## 🚀 Features

- **🎨 Pixel Perfect UI** — Matches the provided design exactly.
- **⚡ Smooth Animations** — Delightful transitions for better user experience.
- **🌀 State Management with BLoC/Cubit** — Separation of concerns with reactive updates.
- **🧩 Dependency Injection** — Managed via `getIt` and `injectable` for clean, testable code.
- **❄️ Immutable Models** — Built with `freezed` for safety and maintainability.
- **📳 Haptic Feedback** — Subtle vibration cues at key interactions.
- **✅ Unit Tested** — Core business logic tested for reliability.
- **📱 Fully Responsive** — Works on multiple screen sizes.

---

## 🛠 Tech Stack

- **Framework**: Flutter
- **State Management**: BLoC / Cubit
- **Code Generation**: Freezed
- **Dependency Injection**: getIt + injectable
- **Animations**: Flutter's AnimationController & custom curves
- **Haptic Feedback**: Flutter's `HapticFeedback` API
- **Testing**: `flutter_test`, `mocktail`

---

## 📂 Project Structure

```plaintext
lib/
 ├── core/               # Constants, themes, utilities
 ├── data/               # Models, repositories, API calls
 ├── di/                 # Dependency injection setup
 ├── features/           # Feature-based folder structure
 │    ├── presentation/  # UI + Cubit/BLoC + Widgets
 │    ├── domain/        # Entities & use cases
 │    └── data/          # Feature-specific data layer
 ├── main.dart           # App entry point
