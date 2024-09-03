# GAppUtility

GAppUtility is a Swift package providing a collection of utility functions for common tasks in iOS development, including network checks, device information retrieval, disk and memory usage, and more.

## Features

- Check for internet availability.
- Detect VPN connections.
- Retrieve device information such as language, region, and orientation.
- Get remaining disk space and memory usage.
- Manage orientation locking for the app.

## Installation

### Swift Package Manager

To integrate `GAppUtility` into your project using Swift Package Manager, add it to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/yourusername/GAppUtility.git", from: "1.0.0")
]
```

## Usage

### 1. import GAppUtility

```
import GAppSettings
```

### 2. Check Internet Availability

```
if NetworkUtility.isInternetAvailable {
    print("Internet is available")
} else {
    print("Internet is not available")
}

```

### 3. Check VPN Connection

```
if NetworkUtility.isConnectedToVPN {
    print("Connected to VPN")
} else {
    print("Not connected to VPN")
}

```

### 5. Get Device Information

```
let deviceId = DeviceInfo.deviceId
let deviceLanguage = DeviceInfo.language
let deviceRegion = DeviceInfo.region
let deviceOrientation = DeviceInfo.orientation

```



### 6. Get Disk and Memory Information

```
if let freeDiskSpace = DiskUtility.getFreeDiskSpace() {
    print("Free Disk Space: \(freeDiskSpace) bytes")
}

let totalMemory = MemoryUtility.getMemoryDeviceTotal()
let usedMemory = MemoryUtility.getMemoryUsed()


```



### 7. Manage Orientation

```
OrientationUtility.lockOrientation(.portrait)
OrientationUtility.unlockOrientation()
OrientationUtility.lockOrientation(.landscape, andRotateTo: .landscapeRight)

```



















