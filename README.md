# RegexSwift
RegexSwift is  simple regular expression wrapper library for swift

## How to use
Fist, you need to import this library

```swift
import RegexSwift
```

## Example

### Match:

```swift

let regex = RegexSwift.mustCompile(pattern: "a*c")
regex.match(target: "aabbbbbbbc")

// true

```

### FindAll:

```swift

let regex = RegexSwift.mustCompile(pattern: "[\\d\\-]+")
regex.findAllStringSubMatch(target: "hiro:123-111-222245 hirot:004123455-33333222-245354234222")

//["123-111-222245", "004123455-33333222-245354234222"]

```

### Split:

```swift

let regex = RegexSwift.mustCompile(pattern: "\\s*,\\s")
regex.split(target: "00000001,hihihihi roooootototototo, hlts2")

//["00000001,hihihihi roooootototototo", "hlts2"]

```

### Replace:

```swift

let regex = RegexSwift.mustCompile(pattern: "[A-Za-z]*right")
regex.replaceAllString(target:  "Copyright 2017 hlts." , with: "Copyleft")

//Copyleft 2017 hlts.

```

## Requirements
Swift3.0 or latter.

## Installation

HttpSwift is available through [Carthage](https://github.com/Carthage/Carthage) or
[Swift Package Manager](https://github.com/apple/swift-package-manager).

### Carthage

```
github "hlts2/RegexSwift"
```

for detail, please follow the [Carthage Instruction](https://github.com/Carthage/Carthage#if-youre-building-for-ios-tvos-or-watchos)

### Swift Package Manager

```
dependencies: [
    .Package(url: "https://github.com/hlts2/RegexSwift.git", majorVersion: 1)
]
```

for detail, please follow the [Swift Package Manager Instruction](https://github.com/apple/swift-package-manager/blob/master/Documentation/Usage.md)
