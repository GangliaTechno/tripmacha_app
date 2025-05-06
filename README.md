# Trip Macha App

> A Flutter application that delivers a smooth, component‑driven travel experience, powered by **GetX** for state‑management and routing.

---

## 📂 Project Structure


| Directory | Purpose | Key Contents |
|-----------|---------|--------------|
| **`assets/`** | Static resources consumed at runtime. 
| **`lib/components/`** | **Reusable, presentation‑only widgets**. Import anywhere to keep UIs DRY. 
| **`lib/controllers/`** | **GetX controllers**—one per screen or feature. Handle state, navigation and async work. 
| **`lib/core/`** | **App‑wide scaffolding and utilities**. | sub‑folders below |
| &nbsp;&nbsp;`bindings/` | **Binding classes** that register controllers & services for DI when a route loads. 
| &nbsp;&nbsp;`constant/` | Centralised **configuration & theme** objects. | `app_constants.dart` (colour palette, text styles, etc.) |
| &nbsp;&nbsp;`widgets/` | High‑level widgets used across multiple screens. 
| **`lib/data/`** | **Data layer**—models, repositories, network helpers, JSON fixtures.
| **`lib/screens/`** | **Visual layer**—layout code for each app page. 

---

## 🚀 Getting Started

```bash
# 1. Install Flutter dependencies
flutter pub get

# 2. Confirm assets are registered in pubspec.yaml
#    (logo, onboarding images, Lottie files, etc.)

# 3. Run the app on an attached device/emulator
flutter run
