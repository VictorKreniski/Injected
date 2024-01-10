# Injected

[![Swift Version](https://img.shields.io/badge/Swift-5.0%2B-F16D39.svg)](https://swift.org/)
[![License](https://img.shields.io/github/license/VictorKreniski/Injected.svg)](LICENSE)

## Overview

`Injected` is a Swift Package Manager (SPM) package that provides a property wrapper for dependency injection in Swift projects. It simplifies the process of injecting dependencies into your code, making it more modular and testable.

## Features

- **`@Injected` Property Wrapper**: Easily inject dependencies using the `@Injected` property wrapper.
- **`InjectionKey` Protocol**: Implement the `InjectionKey` protocol for custom injection keys.
- **Shared State Management**: Manage shared state with the `InjectedValues` structure.

## Installation

### Swift Package Manager

To integrate this library into your Xcode project using Swift Package Manager, follow these steps:

1. Open your Xcode project.
2. Navigate to the menu `File > Swift Packages > Add Package Dependency...`.
3. Enter the following URL of this repository: `git@github.com:VictorKreniski/Injected.git`.
4. Click **Next** and select the version or branch you want to use.
5. Click **Next** and then **Finish**.

The library will be automatically resolved and linked with your Xcode project.

## Usage

1. Import the `Injected` module:

```swift
import Injected
```

2. Define an injection key using the `InjectionKey` protocol:

```swift
private struct TestInjectedValues: InjectionKey {
    static var currentValue: String = ""
}
```

3. Use the `@Injected` property wrapper to inject dependencies:

```swift
@Injected(\.testValue) var testValue
```

4. Set and get values using the injected property:

```swift
testValue = "Updated String"
print(testValue) // Output: "Updated String"
```

## License

`Injected` is available under the MIT license. See the [LICENSE](LICENSE) file for more info.

## Contact

For any questions or suggestions, feel free to [open an issue](https://github.com/VictorKreniski/Injected/issues).
