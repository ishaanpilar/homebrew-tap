# ishaanpilar/homebrew-tap

Homebrew tap for my macOS apps.

## [MacTelemetry](https://github.com/ishaanpilar/MacTelemetry)

```bash
brew install --cask ishaanpilar/tap/mactelemetry
xattr -dr com.apple.quarantine /Applications/MacTelemetry.app
```

## [Arduino Serial Namer](https://github.com/ishaanpilar/arduino-serial-device-namer)

Menu-bar app that identifies and persistently names Arduino/ESP32/USB-serial
devices, so macOS shuffling `/dev/cu.*` ports never leaves you guessing which
board is which.

```bash
brew install --cask ishaanpilar/tap/arduino-serial-namer
xattr -dr com.apple.quarantine "/Applications/Arduino Serial Namer.app"
```

## [WhereFrom](https://github.com/ishaanpilar/MacOSWhereFrom)

Menu-bar tool that surfaces where your files came from (the origin URL macOS
hides), then lets you triage, group, find duplicates, and organize them — all
local.

```bash
brew install --cask ishaanpilar/tap/wherefrom
xattr -dr com.apple.quarantine /Applications/WhereFrom.app
```
