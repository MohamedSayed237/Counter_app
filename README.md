# Counter App

A simple Counter App built with Flutter, utilizing Cubit for state management. This app demonstrates the basic principles of managing state in a Flutter application using the Cubit package.

## Features

- Increment and decrement the counter
- Reset the counter

## Installation

To get started with the project, clone the repository and install the necessary dependencies.

`'bash
git clone https://github.com/your-username/counter-app.git
cd counter-app
flutter pub get
Running the App
Ensure you have Flutter installed on your machine. For more details on Flutter installation, visit the official Flutter documentation.

To run the app on an emulator or a connected device:
flutter run


Folder Structure

counter-app/
|- android/
|- ios/
|- lib/
|  |- cubit/
|  |  |- counter_cubit.dart
|  |  |- counter_state.dart
|  |- BasketBallCounterApp.dart
|  |- main.dart
|- test/
|- pubspec.yaml
|- README.md

cubit/: Contains the Cubit classes for state management.
BasketBallCounterApp.dart: The entry point of the app.

Dependencies
Below are the main dependencies used in the project:

flutter_bloc - State management using Cubit
You can find the complete list of dependencies in the pubspec.yaml file.
