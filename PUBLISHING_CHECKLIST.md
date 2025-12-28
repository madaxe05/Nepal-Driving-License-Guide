# 🚀 Publishing Checklist for Nepal Driving License Guide

Use this checklist to ensure your app is ready for publishing to Google Play Store and Apple App Store.

---

## ✅ Documentation (COMPLETED)

- [x] README.md - Comprehensive project documentation
- [x] PRIVACY_POLICY.md - Privacy policy (no data collection)
- [x] TERMS_OF_SERVICE.md - Terms of service
- [x] LICENSE - MIT License
- [x] CHANGELOG.md - Version history
- [x] CONTRIBUTING.md - Contribution guidelines
- [x] STORE_LISTING.md - Store listing information
- [x] About screen updated with legal links

---

## 📱 App Preparation

### Code & Functionality
- [ ] Test app on Android devices (multiple screen sizes)
- [ ] Test app on iOS devices (iPhone & iPad)
- [ ] Test dark mode on all screens
- [ ] Test offline functionality
- [ ] Fix any crashes or bugs
- [ ] Run `flutter analyze` and fix warnings
- [ ] Run `flutter test` (if tests exist)
- [ ] Verify all navigation flows work
- [ ] Check all content displays correctly
- [ ] Test on minimum SDK versions (Android 21, iOS 12)

### App Configuration
- [ ] Update `pubspec.yaml`:
  - [ ] Remove `publish_to: 'none'` if publishing to pub.dev
  - [ ] Verify version: `1.0.0+1`
  - [ ] Update description
- [ ] Update Android (`android/app/build.gradle`):
  - [ ] applicationId: `com.yourdomain.nepal_license_guide`
  - [ ] versionCode: `1`
  - [ ] versionName: `"1.0.0"`
  - [ ] minSdkVersion: `21`
  - [ ] targetSdkVersion: `34` (latest)
- [ ] Update Android (`android/app/src/main/AndroidManifest.xml`):
  - [ ] App name: `Nepal License Guide`
  - [ ] Android permissions (remove unnecessary ones)
- [ ] Update iOS (`ios/Runner/Info.plist`):
  - [ ] CFBundleDisplayName: `Nepal License Guide`
  - [ ] CFBundleIdentifier: `com.yourdomain.nepalLicenseGuide`
  - [ ] CFBundleShortVersionString: `1.0.0`
  - [ ] CFBundleVersion: `1`
  - [ ] Remove unused permissions

---

## 🎨 App Assets

### App Icon
- [ ] Design app icon (512x512 for Android, 1024x1024 for iOS)
- [ ] Add to `android/app/src/main/res/` (various sizes)
- [ ] Add to `ios/Runner/Assets.xcassets/AppIcon.appiconset/`
- [ ] Test icon appears correctly on device

**Icon Design Tool**: You can use:
- [App Icon Generator](https://www.appicon.co/)
- [Icon Kitchen](https://icon.kitchen/)
- Figma or Canva

### Screenshots
Take screenshots of:
- [ ] Home screen (light mode)
- [ ] Category selection showing bike/car options
- [ ] Content detail screen showing exam info
- [ ] Dark mode screenshot
- [ ] Traffic rules screen
- [ ] About screen

**Requirements**:
- Android: 1080x1920 px minimum (16:9)
- iOS: 1290x2796 px (iPhone 6.7"), 1242x2688 px (iPhone 6.5")
- 4-8 screenshots recommended
- PNG or JPEG format

### Feature Graphic (Google Play)
- [ ] Create 1024x500 px feature graphic
- [ ] Include app name and tagline
- [ ] Use brand colors (blue theme)

---

## 🔐 Legal & Privacy

### Privacy Policy
- [x] Created PRIVACY_POLICY.md
- [ ] Host online (GitHub Pages, your website, or privacy policy generator)
- [ ] Get URL for store listing
- [ ] Add to app stores

**Options to host**:
1. GitHub Pages (free)
2. Your website
3. Use [Privacy Policy Generator](https://www.privacypolicygenerator.info/)

### Terms of Service
- [x] Created TERMS_OF_SERVICE.md
- [ ] Host online
- [ ] Get URL for store listing
- [ ] Link in app store listings

---

## 📦 Build & Sign

### Android (Google Play)
- [ ] Generate upload keystore:
  ```bash
  keytool -genkey -v -keystore upload-keystore.jks -keyalg RSA \
    -keysize 2048 -validity 10000 -alias upload
  ```
- [ ] Create `android/key.properties`:
  ```
  storePassword=<password>
  keyPassword=<password>
  keyAlias=upload
  storeFile=<path-to-upload-keystore.jks>
  ```
- [ ] Update `android/app/build.gradle` with signing config
- [ ] Build release bundle:
  ```bash
  flutter build appbundle --release
  ```
- [ ] Test release build:
  ```bash
  flutter build apk --release
  flutter install
  ```

### iOS (App Store)
- [ ] Set up Apple Developer account ($99/year)
- [ ] Create App ID in App Store Connect
- [ ] Set up signing certificates
- [ ] Configure Xcode with team/signing
- [ ] Build iOS archive:
  ```bash
  flutter build ios --release
  ```
- [ ] Upload to App Store Connect via Xcode

---

## 🏪 Google Play Store

### Play Console Setup
- [ ] Create Google Play Console account (one-time $25 fee)
- [ ] Create new app
- [ ] Select default language: English
- [ ] App name: **Nepal Driving License Guide**
- [ ] Category: **Education**

### Main Store Listing
- [ ] App name: Nepal Driving License Guide
- [ ] Short description (80 chars):
  ```
  Complete offline guide for Nepal driving license exam. Bike & Car prep included!
  ```
- [ ] Full description (Copy from STORE_LISTING.md)
- [ ] Upload screenshots (4-8 images)
- [ ] Upload app icon (512x512 PNG)
- [ ] Upload feature graphic (1024x500 PNG)
- [ ] Categorization:
  - [ ] App: Application
  - [ ] Category: Education
  - [ ] Tags: Add relevant tags
- [ ] Contact details:
  - [ ] Email
  - [ ] Website (optional)
  - [ ] Phone (optional)

### App Content
- [ ] Privacy Policy: Add hosted URL
- [ ] App access: All features available without restrictions
- [ ] Ads: No (this app contains no ads)
- [ ] Content rating questionnaire:
  - [ ] Complete questionnaire
  - [ ] Should get "Everyone" rating
- [ ] Target audience: 16+ (driving age)
- [ ] News app: No
- [ ] COVID-19 contact tracing: No
- [ ] Data safety:
  - [ ] No data collected
  - [ ] No data shared
  - [ ] Security practices (if applicable)

### Release
- [ ] Production track
- [ ] Countries/regions: Start with Nepal, expand later
- [ ] Upload app bundle (AAB file)
- [ ] Release name: 1.0.0
- [ ] Release notes: Copy from CHANGELOG.md
- [ ] Review and rollout

---

## 🍎 Apple App Store

### App Store Connect
- [ ] Create Apple Developer account ($99/year)
- [ ] Create new app
- [ ] Bundle ID: `com.yourdomain.nepalLicenseGuide`
- [ ] SKU: `nepal-license-guide`
- [ ] App name: **Nepal License Guide**

### App Information
- [ ] Subtitle (30 chars): `Complete DL Exam Preparation`
- [ ] Privacy Policy URL: (hosted URL)
- [ ] Category:
  - [ ] Primary: Education
  - [ ] Secondary: Reference
- [ ] Content Rights: (your choice)

### Pricing and Availability
- [ ] Price: Free
- [ ] Availability: All countries, or start with specific regions

### App Privacy
- [ ] Complete privacy questionnaire
- [ ] Data Types: None collected
- [ ] This should make submission easier

### Prepare for Submission
- [ ] Upload build via Xcode/Transporter
- [ ] Select build for this version
- [ ] Version: 1.0.0
- [ ] Copyright: 2025 Sohan Dhungel
- [ ] Description: (Copy from STORE_LISTING.md)
- [ ] Keywords: (Copy from STORE_LISTING.md, 100 chars max)
- [ ] Support URL: GitHub repo or your website
- [ ] Marketing URL (optional)
- [ ] Screenshots:
  - [ ] 6.7" Display (required)
  - [ ] 6.5" Display
  - [ ] iPad Pro (if supporting iPad)
- [ ] App icon: Auto-filled from app
- [ ] Age rating:
  - [ ] Complete questionnaire
  - [ ] Should get 4+
- [ ] Add what's new: Copy from CHANGELOG.md

### Review Information
- [ ] Contact information
- [ ] Demo account (if needed): N/A
- [ ] Notes: "This app works completely offline. No special login required."

### Submission
- [ ] Review everything
- [ ] Submit for review
- [ ] Wait for Apple review (1-7 days typically)

---

## 🧪 Pre-Submission Testing

### Critical Tests
- [ ] Install on fresh device (no previous version)
- [ ] Verify app opens without crashing
- [ ] Navigate through all categories
- [ ] Read several content sections
- [ ] Toggle dark mode
- [ ] Enable airplane mode, verify offline functionality
- [ ] Check About screen and legal links work
- [ ] Verify all text is readable and formatted correctly
- [ ] Test on various screen sizes
- [ ] Check for any spelling/grammar errors in content

### Performance
- [ ] App size check (should be <50MB ideally)
- [ ] Load time is acceptable
- [ ] No noticeable lag or stuttering
- [ ] Battery usage is reasonable
- [ ] Memory usage is acceptable

---

## 📣 Post-Launch

### Immediately After Launch
- [ ] Monitor crash reports (Play Console / App Store Connect)
- [ ] Check first reviews
- [ ] Respond to user feedback
- [ ] Fix critical bugs ASAP

### First Week
- [ ] Announce on social media (if applicable)
- [ ] Share with friends/family for initial reviews
- [ ] Monitor app store ratings
- [ ] Gather user feedback
- [ ] Plan first update if needed

### First Month
- [ ] Analyze user engagement
- [ ] Read all reviews and respond
- [ ] Create plan for version 1.1.0
- [ ] Add requested features to backlog

### Ongoing Maintenance
- [ ] Keep content updated with regulation changes
- [ ] Fix bugs reported by users
- [ ] Add new features based on feedback
- [ ] Keep dependencies updated
- [ ] Test on new OS versions

---

## 📋 Common Rejection Reasons (Avoid These)

### Google Play
- ❌ Privacy policy missing or not accessible
- ❌ App crashes on startup
- ❌ Misleading app description
- ❌ Copyright infringement
- ❌ Broken main functionality

### Apple App Store
- ❌ App crashes or has major bugs
- ❌ Incomplete app information
- ❌ Misleading screenshots or description
- ❌ Privacy policy issues
- ❌ Copyright/trademark issues
- ❌ App doesn't work as described

---

## 🆘 Helpful Resources

### Flutter Documentation
- [Build & Release Android](https://docs.flutter.dev/deployment/android)
- [Build & Release iOS](https://docs.flutter.dev/deployment/ios)

### Store Requirements
- [Google Play Console Help](https://support.google.com/googleplay/android-developer)
- [App Store Connect Help](https://developer.apple.com/app-store-connect/)

### Tools
- [App Icon Generator](https://www.appicon.co/)
- [Privacy Policy Generator](https://www.privacypolicygenerator.info/)
- [Screenshot Framer](https://theapplaunchpad.com/)

---

## ✨ Tips for Success

1. **Test Thoroughly**: Test on real devices, not just emulators
2. **Be Patient**: First app review can take time
3. **Good Screenshots**: Quality screenshots increase downloads
4. **Clear Description**: Make it easy to understand what your app does
5. **Respond to Reviews**: Engage with your users
6. **Regular Updates**: Keep the app fresh with updates
7. **Monitor Analytics**: Use Play Console/App Store Connect analytics
8. **ASO (App Store Optimization)**: Use good keywords and descriptions

---

## 🎉 You're Almost Ready!

Work through this checklist systematically. Don't rush - quality is important for approval and user satisfaction.

**Good luck with your launch! 🚀**

---

**Questions or need help?**
- Check Flutter documentation
- Visit Stack Overflow
- Check Google Play/App Store support

**Remember**: Your first app launch is a learning experience. Don't be discouraged by rejections - they happen to everyone. Just fix the issues and resubmit!
