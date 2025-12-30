# Red Light Torch for iPhone

A simple, effective red light torch app for iPhone that preserves your night vision while providing illumination. Perfect for astronomy, camping, photography, or any nighttime activity where maintaining dark adaptation is essential.

## Features

- **Full-screen red light** - Turns your entire iPhone screen red for maximum illumination
- **Toggle on/off** - Simple tap control to activate/deactivate the red light
- **Adjustable brightness** - Slider control to set the perfect intensity for your needs
- **Night vision preservation** - Red light wavelengths don't disrupt your eyes' dark adaptation
- **Clean, minimal interface** - No distractions, just the functionality you need

## Why Red Light?

Red light (620-750nm wavelength) is ideal for nighttime use because:
- Preserves scotopic vision (night-adapted eyesight)
- Allows pupils to remain dilated for better dark vision
- Doesn't trigger the same alertness response as blue/white light
- Ideal for stargazing, astronomy, and outdoor navigation

## Tech Stack

- **Swift** - Native iOS development
- **SwiftUI** - Modern declarative UI framework
- **No external dependencies** - Pure Swift/SwiftUI implementation

## Requirements

- iOS 15.0+
- iPhone (optimized for all screen sizes)
- Xcode 14.0+ (for development)

## Installation

1. Clone this repository
2. Open the `.xcodeproj` file in Xcode
3. Select your target device or simulator
4. Build and run (⌘R)

## Usage

1. **Launch the app** - Opens directly to the red light screen
2. **Tap anywhere** to toggle the red light on/off
3. **Use the slider** (when visible) to adjust brightness from 0-100%
4. **Keep screen on** - The app prevents auto-lock when the light is active

## Development Milestones

### Milestone 1: Basic Red Screen ✓
**Goal:** Display a solid red full-screen view
- Create SwiftUI project
- Implement a full-screen red `Color.red` view
- Verify the entire screen turns red when launched
- **Test:** Launch app and confirm the screen is completely red with no white borders

### Milestone 2: Toggle Functionality ✓
**Goal:** Turn the red light on and off
- Add state variable to track on/off status
- Implement tap gesture to toggle between red and black screen
- Add visual feedback for the toggle
- **Test:** Tap the screen and verify it switches between red (on) and black (off)

### Milestone 3: Brightness Slider ✓
**Goal:** Control red light intensity
- Add a brightness slider (0.0 to 1.0)
- Bind slider to screen opacity/brightness
- Position slider for easy access without obscuring light
- **Test:** Move the slider and observe the red light dimming and brightening smoothly

### Milestone 4: Prevent Screen Lock ✓
**Goal:** Keep screen active during use
- Implement `UIApplication.shared.isIdleTimerDisabled = true` when light is on
- Re-enable auto-lock when light is off
- Ensure proper state management
- **Test:** Turn on red light, wait 30+ seconds, confirm screen doesn't auto-lock (then test that it does lock when light is off)

### Milestone 5: UI Polish & Maximum Brightness ✓
**Goal:** Professional finish with optimal brightness
- Set screen to maximum brightness when red light is active
- Restore original brightness when turned off
- Add smooth transitions and animations
- Implement clean control visibility (show controls on interaction)
- **Test:**
  - Turn on red light and verify screen brightness increases to maximum
  - Turn off light and verify brightness returns to previous level
  - Test the app in a dark room to confirm usability

## Project Structure

```
RedLightTorch/
├── RedLightTorchApp.swift       # App entry point
├── ContentView.swift             # Main red light view
├── Assets.xcassets/              # App icons and assets
└── Info.plist                    # App configuration
```

## Contributing

This is a personal project, but suggestions and improvements are welcome! Feel free to open issues or submit pull requests.

## License

MIT License - feel free to use and modify as needed.

## Acknowledgments

Built with SwiftUI for iOS. No external frameworks or dependencies required.

---

**Note:** This app is designed for practical use. Always carry a backup light source when engaging in outdoor activities.
