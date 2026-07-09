cask "arduino-serial-namer" do
  version "1.0.0"
  sha256 "7c7a0e38219aab78cef95e9ce527ed12ee690ce59c263d89b215e66157cb1156"

  url "https://github.com/ishaanpilar/arduino-serial-device-namer/releases/download/v#{version}/ArduinoSerialNamer-#{version}.dmg"
  name "Arduino Serial Namer"
  desc "Menu-bar app to identify and name Arduino/ESP32/USB-serial devices"
  homepage "https://github.com/ishaanpilar/arduino-serial-device-namer"

  depends_on macos: :ventura

  app "Arduino Serial Namer.app"

  zap trash: "~/Library/Application Support/ArduinoSerialNamer"

  caveats <<~EOS
    Arduino Serial Namer is not notarized yet, so macOS quarantines it. Clear the flag once after install:

      xattr -dr com.apple.quarantine "/Applications/Arduino Serial Namer.app"

    (Or open it once, then allow it in System Settings > Privacy & Security > Open Anyway.)
  EOS
end
