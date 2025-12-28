# 🇳🇵 Nepal Driving License Guide

<p align="center">
  <img src="assets/logo.png" alt="Nepal Driving License Guide Logo" width="200"/>
</p>

<p align="center">
  <strong>A comprehensive Flutter mobile application designed to help Nepal citizens prepare for their driving license exams.</strong>
</p>

## ✨ Features

- **📚 Complete Exam Preparation Guide**
  - Detailed information for Bike/Scooter licenses
  - Comprehensive guide for Car/Jeep licenses
  - Written exam preparation with topics covered
  - Practical trial exam overview with tips

- **📋 Required Documentation**
  - Complete list of required documents
  - Eligibility requirements
  - Step-by-step application process

- **🚦 Traffic Rules & Regulations**
  - Speed limits and lane discipline
  - Traffic signals and right of way
  - Penalties and fines information
  - Safety guidelines

- **🌙 Dark Mode Support**
  - Automatic theme switching based on system settings
  - Easy on the eyes for night reading

- **📴 Offline Functionality**
  - Works completely offline
  - No internet connection required
  - All content available locally

- **🎨 Modern UI/UX**
  - Clean and intuitive interface
  - Easy navigation
  - Material Design principles

## 📱 Screenshots

*(Screenshots will be added here)*

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.10.4 or higher)
- Dart SDK
- Android Studio / Xcode (for respective platforms)
- A mobile device or emulator

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/madaxe05/Nepal-Driving-License-Guide.git
   cd nepal_driving_license_guide
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Building for Production

**Android (APK)**
```bash
flutter build apk --release
```

**Android (App Bundle for Play Store)**
```bash
flutter build appbundle --release
```

**iOS**
```bash
flutter build ios --release
```

## 📂 Project Structure

```
lib/
├── main.dart                 # Application entry point
├── data/
│   └── content_data.dart     # JSON content for all guides
├── models/
│   └── content_model.dart    # Data models
├── screens/
│   ├── splash_screen.dart    # Splash screen
│   ├── home_screen.dart      # Main home screen
│   ├── category_screen.dart  # Category selection
│   ├── content_list_screen.dart  # Content listing
│   ├── content_detail_screen.dart # Detailed content view
│   └── about_screen.dart     # About app information
└── widgets/
    ├── category_card.dart    # Category selection cards
    └── section_card.dart     # Section cards
```

## 🛠️ Built With

- [Flutter](https://flutter.dev/) - UI framework
- [Dart](https://dart.dev/) - Programming language
- Material Design - Design system

## 📝 License Types Covered

### 🏍️ Two-Wheeler (Bike/Scooter)
- Minimum age: 16 years
- Required documents
- Written & trial exam details
- Traffic rules specific to bikes

### 🚗 Four-Wheeler (Car/Jeep)
- Minimum age: 18 years (Car), 21 years (Jeep)
- Upgrade requirements
- Comprehensive exam preparation
- Advanced traffic rules

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📧 Contact

Sohan Dhungel - dhungelsohan@gmail.com

Project Link: [https://github.com/madaxe05/Nepal-Driving-License-Guide](https://github.com/madaxe05/Nepal-Driving-License-Guide)

## 🙏 Acknowledgments

- Nepal Department of Transport Management
- Traffic Police, Nepal
- All contributors and testers

## ⚠️ Disclaimer

This app is for educational and informational purposes only. Always refer to official government sources for the most up-to-date and accurate information regarding driving license procedures in Nepal. Traffic rules and regulations may change over time.

## 📱 Download

- **Google Play Store**: *(Link will be added after publishing)*
- **Apple App Store**: *(Link will be added after publishing)*

## 🔄 Updates & Support

For the latest updates, bug reports, or feature requests, please visit our [GitHub Issues](https://github.com/madaxe05/Nepal-Driving-License-Guide/issues) page.

---

Made with ❤️ in Nepal
