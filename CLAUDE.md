# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

TellYou is a Flutter desktop application targeting macOS, Linux, and Windows platforms. The project uses Dart SDK 3.7.0+ and follows Flutter's recommended practices with flutter_lints.

## Development Commands

### Running the Application
```bash
# Run on macOS
flutter run -d macos

# Run on Linux
flutter run -d linux

# Run on Windows
flutter run -d windows
```

### Testing
```bash
# Run all tests
flutter test

# Run a specific test file
flutter test test/widget_test.dart

# Run tests with coverage
flutter test --coverage
```

### Code Quality
```bash
# Run static analysis
flutter analyze

# Format code
dart format .

# Check formatting without modifying files
dart format --output=none --set-exit-if-changed .
```

### Building
```bash
# Build for macOS
flutter build macos

# Build for Linux
flutter build linux

# Build for Windows
flutter build windows
```

### Dependencies
```bash
# Get dependencies
flutter pub get

# Upgrade dependencies
flutter pub upgrade

# Check for outdated packages
flutter pub outdated
```

## Architecture

The codebase follows a three-layer architecture pattern:

### Directory Structure
- `lib/data/` - Data layer (repositories, data sources, models)
- `lib/domain/` - Domain layer (entities, use cases, business logic)
- `lib/ui/` - Presentation layer (screens, widgets, view models, state)
  - Each screen is organized into its own directory under `ui/`
  - Screen components: `screen.dart`, `state.dart`, `view_model.dart`, `widgets/`

### UI Organization
UI screens follow a consistent structure:
- `screen.dart` - Main screen widget
- `state.dart` - State management classes
- `view_model.dart` - Business logic and state handling
- `widgets/` - Screen-specific reusable widgets

The entry point is `lib/main.dart`, which sets up the MaterialApp and routes to the initial HomeScreen.

## Code Style

The project uses `package:flutter_lints/flutter.yaml` for linting rules. All code should pass `flutter analyze` without warnings.