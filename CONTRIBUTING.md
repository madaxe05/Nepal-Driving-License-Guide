# Contributing to Nepal Driving License Guide

First off, thank you for considering contributing to Nepal Driving License Guide! 🎉

It's people like you that make this app a great resource for everyone preparing for their driving license exam in Nepal.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
- [Getting Started](#getting-started)
- [Development Process](#development-process)
- [Submitting Changes](#submitting-changes)
- [Style Guidelines](#style-guidelines)
- [Content Guidelines](#content-guidelines)

## Code of Conduct

This project and everyone participating in it is governed by a Code of Conduct. By participating, you are expected to uphold this code. Please be respectful, inclusive, and considerate.

## How Can I Contribute?

### Reporting Bugs 🐛

Before creating bug reports, please check existing issues to avoid duplicates. When creating a bug report, include:

- **Clear title and description**
- **Steps to reproduce** the problem
- **Expected behavior** vs **actual behavior**
- **Screenshots** if applicable
- **Device information** (OS version, Flutter version, etc.)
- **App version** where the bug occurred

### Suggesting Features 💡

Feature suggestions are welcome! When suggesting a feature:

- **Explain the problem** you're trying to solve
- **Describe the solution** you'd like to see
- **Describe alternatives** you've considered
- **Explain why** this would be useful to most users

### Updating Content 📝

Nepal's traffic rules and regulations may change. If you notice outdated information:

- Provide the **source** of the correct information
- Include **official documentation** if possible
- Explain what **changed** and when

### Improving Documentation 📚

Documentation improvements are always welcome:

- Fix typos or grammatical errors
- Improve clarity of explanations
- Add missing information
- Update outdated instructions

## Getting Started

### Prerequisites

- Flutter SDK (3.10.4 or higher)
- Dart SDK
- Git
- A code editor (VS Code, Android Studio, or IntelliJ)

### Setup

1. **Fork the repository** on GitHub

2. **Clone your fork**:
   ```bash
   git clone https://github.com/madaxe05/Nepal-Driving-License-Guide.git
   cd nepal_driving_license_guide
   ```

3. **Install dependencies**:
   ```bash
   flutter pub get
   ```

4. **Run the app**:
   ```bash
   flutter run
   ```

## Development Process

### Branching Strategy

- `main` - Stable production code
- `develop` - Development branch (if using GitFlow)
- `feature/feature-name` - New features
- `fix/bug-description` - Bug fixes
- `docs/what-changed` - Documentation updates
- `content/what-updated` - Content updates

### Creating a New Branch

```bash
git checkout -b feature/your-feature-name
```

### Making Changes

1. **Keep changes focused** - One feature/fix per pull request
2. **Test thoroughly** - Ensure your changes work on both Android and iOS
3. **Follow code style** - See style guidelines below
4. **Write good commit messages** - See commit message guidelines

### Testing Your Changes

Before submitting:

```bash
# Run tests (if available)
flutter test

# Check for issues
flutter analyze

# Format code
flutter format .

# Build for both platforms
flutter build apk --debug
flutter build ios --debug --no-codesign
```

## Submitting Changes

### Pull Request Process

1. **Update your fork**:
   ```bash
   git fetch upstream
   git rebase upstream/main
   ```

2. **Push your changes**:
   ```bash
   git push origin feature/your-feature-name
   ```

3. **Create a Pull Request** on GitHub

4. **Fill out the PR template** with:
   - Description of changes
   - Related issue numbers
   - Screenshots (for UI changes)
   - Testing done
   - Checklist completion

5. **Respond to review feedback** and make necessary changes

### Pull Request Checklist

- [ ] Code follows the project's style guidelines
- [ ] Changes have been tested on Android
- [ ] Changes have been tested on iOS (if applicable)
- [ ] No new warnings from `flutter analyze`
- [ ] Code is properly formatted
- [ ] Screenshots added for UI changes
- [ ] Documentation updated (if needed)
- [ ] Changelog updated (if needed)

## Style Guidelines

### Dart Code Style

Follow the [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style):

- Use `lowerCamelCase` for variables and function names
- Use `UpperCamelCase` for class names
- Use `const` for compile-time constants
- Prefer `final` over `var` when the value won't change
- Maximum line length: 80 characters where reasonable

```dart
// Good
class UserProfile {
  final String userName;
  const UserProfile(this.userName);
}

// Bad
class user_profile {
  var UserName;
  user_profile(this.UserName);
}
```

### File Organization

```
lib/
├── main.dart
├── data/         # Data and content
├── models/       # Data models
├── screens/      # UI screens
├── widgets/      # Reusable widgets
└── utils/        # Utility functions (if needed)
```

### Widget Structure

- Keep widgets small and focused
- Extract reusable components
- Use const constructors where possible
- Name widgets descriptively

### Comments

```dart
// Good - Explain WHY, not WHAT
// Using Future.delayed to prevent race condition during rebuild
Future.delayed(Duration.zero, () => setState(...));

// Bad - Obvious comment
// Set the color to blue
color = Colors.blue;
```

## Content Guidelines

### Updating License Information

When updating content in `lib/data/content_data.dart`:

1. **Verify accuracy** - Use official sources
2. **Cite sources** - Include references if possible
3. **Use clear language** - Easy to understand for all users
4. **Format consistently** - Follow existing formatting
5. **Check JSON syntax** - Ensure valid JSON structure

### Content Structure

```json
{
  "id": "unique-id",
  "title": "Clear, Concise Title",
  "icon": "material_icon_name",
  "content": "Well-formatted content with \\n for newlines"
}
```

### Content Writing Tips

- Use **clear headings** (marked with emoji)
- Break into **short paragraphs**
- Use **bullet points** for lists
- Include **examples** where helpful
- Add **warnings** for important information
- Keep **language simple** and accessible

### Emoji Usage

Use emoji consistently:
- 📄 Documents
- ✅ Requirements/Eligibility
- 📝 Application/Process
- 📚 Written Exam
- 🏍️ Bike/Trial
- 🚗 Car/Trial
- 🚦 Traffic Rules
- 💡 Tips
- ⚠️ Warnings

## Commit Message Guidelines

### Format

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

### Examples

```
feat(content): add heavy vehicle license information

Added comprehensive guide for heavy vehicle (truck/bus) license
including all requirements and exam details.

Closes #123
```

```
fix(ui): correct dark mode contrast on home screen

The welcome text was hard to read in dark mode. Adjusted
the color from grey[600] to grey[400] for better contrast.
```

```
docs(readme): update installation instructions

Added troubleshooting section and clarified Flutter version
requirements.
```

## Recognition

Contributors will be recognized in:
- README.md contributors section
- App's About screen (for significant contributions)
- Release notes (for version contributions)

## Questions?

Feel free to:
- Open an issue for clarification
- Reach out via email: dhungelsohan@gmail.com
- Start a discussion on GitHub

## Thank You! 🙏

Your contributions make this app better for everyone studying for their driving license in Nepal. Thank you for taking the time to contribute!

---

**Happy Contributing! 🚀**
