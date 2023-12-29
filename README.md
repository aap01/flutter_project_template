# Flutter Template Project

A new Flutter scratchpad-project to build up your flutter project on top of it

## Application Components

[x] Clean Architecture
[x] Feature First Design
[x] Bloc
[x] Application Localization
[x] Better Asset Management(Yet to complete)

## Feature

- Profile(Yet to complete)

## Prerequisite
```bash
# Install dart
brew install dart

# Install fvm
brew tap leoafarias/fvm
brew install fvm

# Activate fvm
dart pub global activate fvm
```

## Run 

```bash
# Generate localization files
fvm flutter gen-l10n

# Generate build files
fvm dart pub run build_runner build --delete-conflicting-outputs

# Configured for fvm
fvm flutter run -t lib/application/env/prod/prod_main.dart
```
