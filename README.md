# 📊 Bond Market Tracker – Pixel Perfect Flutter App

A **pixel-perfect Flutter application** that tracks and analyzes the bond market using **interactive charts** and real-time data visualization.  
Built with **Clean Architecture**, **BLoC/Cubit** for state management, **Freezed** for immutable models, and **getIt + injectable** for dependency injection.  
Includes **smooth animations**, **haptic feedback**, and **responsive layouts** — optimized for production readiness.

---

## 📖 Project Details

This **Bond Market Tracker** app helps users monitor and analyze bond performance through visually engaging charts and market stats.  
It was designed to match the provided Figma UI exactly, ensuring pixel-perfect fidelity.

### 🎯 Objectives
- Implement the given Figma design into a functional Flutter application.
- Display real-time and historical bond market data.
- Provide interactive charts with filtering and time range selection.
- Maintain scalable, testable architecture using **BLoC**, **Freezed**, and **Dependency Injection**.
- Enhance UX with **animations** and **haptic feedback**.

---

## 📱 Key Features

1. **Dashboard**
   - Overview of market trends.
   - Highlight cards showing returns, yield, and bond performance.
   - Quick filters for different bond categories.

2. **Interactive Charts**
   - Line charts displaying performance trends.
   - Zoom and pan capabilities.
   - Timeframe toggles (1D, 1W, 1M, 1Y).

3. **Bond Details**
   - Key metrics: yield, maturity date, rating.
   - Performance over various timeframes.
   - Animated navigation from dashboard to detail screen.

4. **User Experience Enhancements**
   - Smooth page transitions.
   - Haptic feedback on filter selection and navigation.
   - Fully responsive UI for different screen sizes.

---

## 🛠 Tech Stack

- **Framework**: Flutter (Dart)
- **State Management**: BLoC / Cubit
- **Code Generation**: Freezed
- **Dependency Injection**: getIt + injectable
- **Charts**: FL Chart
- **Animations**: AnimationController, Hero transitions, custom curves
- **Haptic Feedback**: Flutter's `HapticFeedback` API
- **Testing**: `flutter_test`, `mocktail`

---

## 📂 Project Structure

```plaintext
lib/
 ├── core/               # App constants, themes, utilities
 ├── data/               # Models, repositories, API calls
 ├── di/                 # Dependency injection configuration
 ├── features/           # Feature-based structure
 │    ├── presentation/  # UI + Cubit/BLoC + Widgets
 │    ├── domain/        # Entities & use cases
 │    └── data/          # Feature-specific data layer
 ├── main.dart           # App entry point
